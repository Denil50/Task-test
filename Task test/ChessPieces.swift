//
//  ChessPieces.swift
//  Task test
//
//  Created by Apple on 24.06.2022.
//

import Foundation

struct ChessPiece: Hashable {
    var col: Int
    var row: Int
    var imageName: String
    var isWhite: Bool
}
