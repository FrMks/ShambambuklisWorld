//
//  CellModel.swift
//  ShambambuklisWorld
//
//  Created by Максим Французов on 03.10.2024.
//

import Foundation

enum CellType {
    case dead
    case alive
    case life
}

struct CellModel: Identifiable {
    let id = UUID()
    var isAlive: Bool
    var isLife: Bool = false
    
    static func random() -> CellModel {
        let isAlive = Bool.random()
        return CellModel(isAlive: isAlive)
    }
}
