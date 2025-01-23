//
//  RoundButton.swift
//  Reader
//  自定义一种圆角按钮
//  Created by 沈俊杰 on 2025/1/23.
//

import SwiftUI

struct RoundButton: View {
    let text: String
    let image: String
    
    var body: some View {
        HStack {
            Text(text)
            Image(systemName: image)
        }
        .font(.headline)
        .padding(.horizontal, 10)
        .padding(.vertical, 5)
        .foregroundColor(.white)
        .background(Color.accentColor)
        .cornerRadius(10)
    }
}

#Preview {
    RoundButton(text: "目的地", image: "circle")
}
