//
//  Setting.swift
//  Reader
//
//  Created by 沈俊杰 on 2025/1/22.
//

import SwiftUI

struct Setting: View {
    @Binding var darkMode: Bool
    
    var body: some View {
        Button(action: {
            Vibration.selection.vibrate()   // 切换成功，震动反馈
            darkMode.toggle()
        }) {
            Image(systemName: darkMode ? "sun.max.fill" : "moon.fill")
                .font(.system(.headline, design: .rounded))
        }
    }
}

#Preview {
    Setting(darkMode: .constant(false))
}
