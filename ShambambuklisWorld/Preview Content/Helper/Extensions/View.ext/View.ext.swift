//
//  View.ext.swift
//  ShambambuklisWorld
//
//  Created by Максим Французов on 03.10.2024.
//

import SwiftUI

extension View {
    func customCellStyle() -> some View {
        self
            .padding(16)
            .frame(width: 328, height: 72)
            .background(Color.white)
            .cornerRadius(8)
            .shadow(radius: 2)
            .padding(1)
    }
}
