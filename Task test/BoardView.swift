//
//  BoardView.swift
//  Task test
//
//  Created by Apple on 23.06.2022.
//

import UIKit

class BoardView: UIView {

    let ratio = 0.8
    var coordinateX: CGFloat = 20
    var coordinateY: CGFloat = 20
    var sizeCell: CGFloat = 0
    
    override func draw(_ rect: CGRect) {
        coordinateX = bounds.width * (1 - ratio) / 2
        coordinateY = bounds.height * (1 - ratio) / 2
        sizeCell = bounds.width * ratio / 8
        drawBoard()
    }
    

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
