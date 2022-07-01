//
//  ViewController.swift
//  Task test
//
//  Created by Apple on 23.06.2022.
//

import UIKit

class ViewController: UIViewController, ChessDelegate  {

    @IBOutlet weak var boardView: BoardView!
    
    var chessEngine: ChessEngine = ChessEngine()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        boardView.chessDelegate = self
        
        chessEngine.initilizingGame()
        boardView.shadowPieces = chessEngine.pieces
        boardView.setNeedsDisplay()
        
    }


    func movePiece(fromCol: Int, fromRow: Int, toCol: Int, toRow: Int) {
        chessEngine.movePiece(fromCol: fromCol, fromRow: fromRow, toCol: toCol, toRow: toRow)
        boardView.shadowPieces = chessEngine.pieces
        boardView.setNeedsDisplay()
    }
    
    func pieceAt(col: Int, row: Int) -> ChessPiece? {
        return chessEngine.pieceAt(col: col, row: row)
    }
}

