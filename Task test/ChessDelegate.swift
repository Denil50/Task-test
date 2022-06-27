//
//  ChessDelegate.swift
//  Task test
//
//  Created by Apple on 27.06.2022.
//

import Foundation

protocol ChessDelegate {
    func movePiece(fromCol: Int, fromRow: Int, toCol: Int, toRow: Int)
}
