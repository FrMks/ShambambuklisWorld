//
//  LiveCellView.swift
//  ShambambuklisWorld
//
//  Created by Максим Французов on 03.10.2024.
//

import SwiftUI

struct LiveCellView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Circle()
                .fill(
                    LinearGradient(gradient: Gradient(colors: [Color(hex: "#FFB800"), Color(hex: "#FFF7B0")]),
                                   startPoint: .top,
                                   endPoint: .bottom)
                )
                .frame(width: 40, height: 40)
                .overlay(
                    Text("💥")
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                )
            
            VStack(alignment: .leading) {
                Text("Живая")
                    .foregroundColor(.black)
                    .font(.system(size: 20))
                    .bold()
                Text("и шевелится!")
                    .foregroundColor(.black)
                    .font(.system(size: 14))
            }
            Spacer()
        }
        .customCellStyle()
    }
}

#Preview {
    LiveCellView()
}
