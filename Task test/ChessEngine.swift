//
//  ChessEngine.swift
//  Task test
//
//  Created by Apple on 24.06.2022.
//

import Foundation

struct ChessEngine {
    
    var pieces: Set<ChessPiece> = Set<ChessPiece>()
    var whiteTurn = true
    
    mutating func movePiece(fromCol: Int, fromRow: Int, toCol: Int, toRow: Int) {
        
        if !canMovePiece(fromCol: fromCol, fromRow: fromRow, toCol: toCol, toRow: toRow) {
            return
        }
        
        guard let candidate = pieceAt(col: fromCol, row: fromRow) else {
            return
        }
        
        if let target = pieceAt(col: toCol, row: toRow) {
            if target.isWhite == candidate.isWhite {
                return
            }
            pieces.remove(target)
        }
        
        pieces.remove(candidate)
        pieces.insert(ChessPiece(col: toCol, row: toRow, imageName: candidate.imageName, isWhite: candidate.isWhite))
        
        whiteTurn = !whiteTurn
    }
    
    func pieceAt(col: Int, row: Int) -> ChessPiece? {
        for piece in pieces {
            if col == piece.col && row == piece.row {
                return piece
            }
        }
        return nil
    }
    
    func canMovePiece(fromCol: Int, fromRow: Int, toCol: Int, toRow: Int) -> Bool {
        if fromCol == toCol && fromRow == toRow {
            return false
        }
        
        guard let candidate = pieceAt(col: fromCol, row: fromRow) else {
            return false
        }
        
        if candidate.isWhite != whiteTurn {
            return false
        }
        return true
    }
    
    mutating func initilizingGame() {
        whiteTurn = true
        pieces.removeAll()
        
//MARK: -Black
        
        for col in 0..<3 {
            pieces.insert(ChessPiece(col: col, row: 0, imageName: "Pawn-black", isWhite: false))
        }
        for col in 0..<3 {
            pieces.insert(ChessPiece(col: col, row: 1, imageName: "Pawn-black", isWhite: false))
        }
        for col in 0..<3 {
            pieces.insert(ChessPiece(col: col, row: 2, imageName: "Pawn-black", isWhite: false))
        }
//        pieces.insert(ChessPiece(col: 0, row: 0, imageName: "Pawn-black"))
//        pieces.insert(ChessPiece(col: 1, row: 0, imageName: "Pawn-black"))
//        pieces.insert(ChessPiece(col: 2, row: 0, imageName: "Pawn-black"))
//        pieces.insert(ChessPiece(col: 0, row: 1, imageName: "Pawn-black"))
//        pieces.insert(ChessPiece(col: 1, row: 1, imageName: "Pawn-black"))
//        pieces.insert(ChessPiece(col: 2, row: 1, imageName: "Pawn-black"))
//        pieces.insert(ChessPiece(col: 0, row: 2, imageName: "Pawn-black"))
//        pieces.insert(ChessPiece(col: 1, row: 2, imageName: "Pawn-black"))
//        pieces.insert(ChessPiece(col: 2, row: 2, imageName: "Pawn-black"))
        
//MARK: -White
        
        for col in 5..<8 {
            pieces.insert(ChessPiece(col: col, row: 5, imageName: "Pawn-white", isWhite: true))
        }
        for col in 5..<8 {
            pieces.insert(ChessPiece(col: col, row: 6, imageName: "Pawn-white", isWhite: true))
        }
        for col in 5..<8 {
            pieces.insert(ChessPiece(col: col, row: 7, imageName: "Pawn-white", isWhite: true))
        }
//        pieces.insert(ChessPiece(col: 7, row: 7, imageName: "Pawn-white"))
//        pieces.insert(ChessPiece(col: 6, row: 7, imageName: "Pawn-white"))
//        pieces.insert(ChessPiece(col: 5, row: 7, imageName: "Pawn-white"))
//        pieces.insert(ChessPiece(col: 7, row: 6, imageName: "Pawn-white"))
//        pieces.insert(ChessPiece(col: 6, row: 6, imageName: "Pawn-white"))
//        pieces.insert(ChessPiece(col: 5, row: 6, imageName: "Pawn-white"))
//        pieces.insert(ChessPiece(col: 7, row: 5, imageName: "Pawn-white"))
//        pieces.insert(ChessPiece(col: 6, row: 5, imageName: "Pawn-white"))
//        pieces.insert(ChessPiece(col: 5, row: 5, imageName: "Pawn-white"))

        
    }
}

