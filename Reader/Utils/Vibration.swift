//
//  Vibration.swift
//  Reader
//  枚举震动类型，用于在切换深色模式成功后震动告知
//  Created by 沈俊杰 on 2025/1/22.
//

import SwiftUI

enum Vibration {
    case error
    case success
    case light
    case selection
    
    func vibrate() {
        switch self {
        case .error:
            UINotificationFeedbackGenerator().notificationOccurred(.error)
            
        case .success:
            UINotificationFeedbackGenerator().notificationOccurred(.success)
            
        case .light:
            UIImpactFeedbackGenerator(style: .light).impactOccurred()
            
        case .selection:
            UISelectionFeedbackGenerator().selectionChanged()
        }
    }
}
