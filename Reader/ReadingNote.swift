//
//  ReadingNote.swift
//  Reader
//
//  Created by 沈俊杰 on 2025/1/22.
//

import SwiftUI

struct ReadingNote: View {
    var body: some View {
        NavigationView {
            Text("上边显示按钮，下边显示笔记内容")
                .navigationTitle("笔记")
        }
    }
}

#Preview {
    ReadingNote()
}
