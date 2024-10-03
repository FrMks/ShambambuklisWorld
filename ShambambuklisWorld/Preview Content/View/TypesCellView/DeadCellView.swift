//
//  CellView.swift
//  ShambambuklisWorld
//
//  Created by Максим Французов on 03.10.2024.
//

import SwiftUI

struct DeadCellView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Circle()
                .fill(
                    LinearGradient(gradient: Gradient(colors: [Color(hex: "#0D658A"), Color(hex: "#B0FFB4")]),
                                   startPoint: .top,
                                   endPoint: .bottom)
                )
                .frame(width: 40, height: 40)
                .overlay(
                    Text("💀")
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                )
            
            VStack(alignment: .leading) {
                Text("Мёртвая")
                    .foregroundColor(.black)
                    .font(.system(size: 20))
                    .bold()
                Text("или прикидывается")
                    .foregroundColor(.black)
                    .font(.system(size: 14))
            }
            Spacer()
        }
        .customCellStyle()
    }
}

#Preview {
    DeadCellView()
}
