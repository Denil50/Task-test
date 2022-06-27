//
//  BoardView.swift
//  Task test
//
//  Created by Apple on 23.06.2022.
//

import UIKit

class BoardView: UIView {

    let ratio: CGFloat = 0.8
    var coordinateX: CGFloat = 0
    var coordinateY: CGFloat = 0
    var sizeCell: CGFloat = 0
    
    var shadowPieces: Set<ChessPiece> = Set<ChessPiece>()
    var chessDelegate: ChessDelegate? = nil
    var fromCol = 0
    var fromRow = 0
    
    override func draw(_ rect: CGRect) {
        coordinateX = bounds.width * (1 - ratio) / 2
        coordinateY = bounds.height * (1 - ratio) / 2
        sizeCell = bounds.width * ratio / 8
        
        drawBoard()
        drawPiece()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let first = touches.first!
        let fingerLocation = first.location(in: self)
        
        fromCol = Int((fingerLocation.x - coordinateX) / sizeCell)
        fromRow = Int((fingerLocation.y - coordinateX) / sizeCell)
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let first = touches.first!
        let fingerLocation = first.location(in: self)
        
        let toCol = Int((fingerLocation.x - coordinateX) / sizeCell)
        let toRow = Int((fingerLocation.y - coordinateX) / sizeCell)
        
        chessDelegate?.movePiece(fromCol: fromCol, fromRow: fromRow, toCol: toCol, toRow: toRow)
    }
    
//MARK: -DisplaysImage
    
    func drawPiece() {
        for piece in shadowPieces {
            let piecesImage = UIImage(named: piece.imageName)
            piecesImage?.draw(in: CGRect(x: coordinateX + (CGFloat((piece.col)) * sizeCell),
                                         y: coordinateY + (CGFloat((piece.row)) * sizeCell),
                                         width: sizeCell, height: sizeCell))
        }
    }
    
//MARK: -Field
    
    func drawBoard() {
        for row in 0..<4 {
            for col in 0..<4 {
                drawSquare(col: col * 2, row: row * 2, color: .white)
                drawSquare(col: (col * 2) + 1, row: row * 2, color: .black)
                
                drawSquare(col: col * 2, row: row * 2 + 1, color: .black)
                drawSquare(col: (col * 2) + 1, row: row * 2 + 1, color: .white)
            }
        }
        
    }
    
    func drawSquare(col: Int, row: Int, color: UIColor) {
        let path = UIBezierPath(rect: CGRect.init(x: coordinateX + (CGFloat(col) * sizeCell),
                                                  y: coordinateY + (CGFloat(row) * sizeCell),
                                                  width: sizeCell, height: sizeCell))
        color.setFill()
        path.fill()
    }
}
