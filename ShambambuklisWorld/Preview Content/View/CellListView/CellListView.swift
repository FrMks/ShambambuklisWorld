//
//  CellListView.swift
//  ShambambuklisWorld
//
//  Created by Максим Французов on 03.10.2024.
//

import SwiftUI

struct CellListView: View {
    let cells: [CellModel]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                ForEach(cells) { cell in
                    if cell.isLife {
                        LifeCellView()
                    } else if cell.isAlive {
                        LiveCellView()
                    } else {
                        DeadCellView()
                    }
                }
            }
        }
    }
}


#Preview {
    CellListView(cells: [])
}
