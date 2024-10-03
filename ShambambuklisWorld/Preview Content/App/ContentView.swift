//
//  ContentView.swift
//  ShambambuklisWorld
//
//  Created by Максим Французов on 03.10.2024.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = CellViewModel()
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(hex: "#310050"), Color(hex: "#000000")]),
                           startPoint: .top,
                           endPoint: .bottom)
            .edgesIgnoringSafeArea(.all) // Игнорировать безопасные зоны для фона
            
            VStack {
                Text("Клеточное наполнение")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                CellListView(cells: viewModel.cells)
                    .padding(16)
                Spacer()
                Button(action: {
                    viewModel.addCell()
                }) {
                    Text("Сотворить")
                        .foregroundColor(.white)
                        .font(.system(size: 14))
                        .frame(width: 331, height: 36)
                        .background(Color(hex: "#5A3472"))
                        .cornerRadius(8) // Добавляем скругление углов
                }
                .padding(.leading, 14)
                .padding(.bottom, 16)
                .padding(.trailing, 15)
            }
        }
    }
}

#Preview {
    ContentView()
}
