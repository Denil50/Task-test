//
//  ChessEngine.swift
//  Task test
//
//  Created by Apple on 24.06.2022.
//

import Foundation

struct ChessEngine {
    var pieces: Set<ChessPiece> = Set<ChessPiece>()
    
    mutating func initilizingGame() {
        pieces.removeAll()
        
//MARK: -Black
        pieces.insert(ChessPiece(col: 0, row: 0, imageName: "Pawn-black"))
        pieces.insert(ChessPiece(col: 1, row: 0, imageName: "Pawn-black"))
        pieces.insert(ChessPiece(col: 2, row: 0, imageName: "Pawn-black"))
        pieces.insert(ChessPiece(col: 0, row: 1, imageName: "Pawn-black"))
        pieces.insert(ChessPiece(col: 1, row: 1, imageName: "Pawn-black"))
        pieces.insert(ChessPiece(col: 2, row: 1, imageName: "Pawn-black"))
        pieces.insert(ChessPiece(col: 0, row: 2, imageName: "Pawn-black"))
        pieces.insert(ChessPiece(col: 1, row: 2, imageName: "Pawn-black"))
        pieces.insert(ChessPiece(col: 2, row: 2, imageName: "Pawn-black"))
        pieces.insert(ChessPiece(col: 2, row: 1, imageName: "Pawn-black"))
        
//MARK: -White
        pieces.insert(ChessPiece(col: 7, row: 7, imageName: "Pawn-white"))
        pieces.insert(ChessPiece(col: 6, row: 7, imageName: "Pawn-white"))
        pieces.insert(ChessPiece(col: 5, row: 7, imageName: "Pawn-white"))
        pieces.insert(ChessPiece(col: 7, row: 6, imageName: "Pawn-white"))
        pieces.insert(ChessPiece(col: 6, row: 6, imageName: "Pawn-white"))
        pieces.insert(ChessPiece(col: 5, row: 6, imageName: "Pawn-white"))
        pieces.insert(ChessPiece(col: 7, row: 5, imageName: "Pawn-white"))
        pieces.insert(ChessPiece(col: 6, row: 5, imageName: "Pawn-white"))
        pieces.insert(ChessPiece(col: 5, row: 5, imageName: "Pawn-white"))

        
    }
}

