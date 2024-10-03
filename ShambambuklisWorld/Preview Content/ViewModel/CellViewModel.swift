//
//  CellViewModel.swift
//  ShambambuklisWorld
//
//  Created by Максим Французов on 03.10.2024.
//

import Foundation

class CellViewModel: ObservableObject {
    @Published var cells: [CellModel] = []
    
    private var consecutiveAliveCount = 0
    private var consecutiveDeadCount = 0
    private var shouldCreateLifeNext = false
    
    func addCell() {
        if shouldCreateLifeNext {
            cells.append(CellModel(isAlive: true, isLife: true))
            shouldCreateLifeNext = false
            return
        }
        
        let newCell = CellModel.random()
        
        if newCell.isAlive {
            handleAliveCell(newCell)
        } else {
            handleDeadCell(newCell)
        }
    }
    
    private func handleAliveCell(_ newCell: CellModel) {
        consecutiveAliveCount += 1
        consecutiveDeadCount = 0
        
        if consecutiveAliveCount == 3 {
            cells.append(newCell)
            shouldCreateLifeNext = true
            consecutiveAliveCount = 0
        } else {
            cells.append(newCell)
        }
    }
    
    private func handleDeadCell(_ newCell: CellModel) {
        consecutiveDeadCount += 1
        consecutiveAliveCount = 0
        
        cells.append(newCell)
        
        if consecutiveDeadCount == 3 {
            removeNearestLife()
            consecutiveDeadCount = 0
        }
    }
    
    private func removeNearestLife() {
        if let lifeIndex = cells.lastIndex(where: { $0.isLife }) {
            cells[lifeIndex].isLife = false
            cells[lifeIndex].isAlive = false
        }
    }
}


