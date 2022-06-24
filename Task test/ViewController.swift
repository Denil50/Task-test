//
//  ViewController.swift
//  Task test
//
//  Created by Apple on 23.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var boardView: BoardView!
    
    var chessEngine: ChessEngine = ChessEngine()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        chessEngine.initilizingGame()
        boardView.shadowPieces = chessEngine.pieces
        
    }


}

