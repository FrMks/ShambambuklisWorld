//
//  LifeCellView.swift
//  ShambambuklisWorld
//
//  Created by Максим Французов on 03.10.2024.
//

import SwiftUI

struct LifeCellView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Circle()
                .fill(
                    LinearGradient(gradient: Gradient(colors: [Color(hex: "#AD00FF"), Color(hex: "#FFB0E9")]),
                                   startPoint: .top,
                                   endPoint: .bottom)
                )
                .frame(width: 40, height: 40)
                .overlay(
                    Text("🐣")
                        .scaledToFit()
                        .frame(width: 24, height: 24)
                )
            
            VStack(alignment: .leading) {
                Text("Жизнь")
                    .foregroundColor(.black)
                    .font(.system(size: 20))
                    .bold()
                Text("ку-ку!")
                    .foregroundColor(.black)
                    .font(.system(size: 14))
            }
            Spacer()
        }
        .customCellStyle()
    }
}

#Preview {
    LifeCellView()
}
