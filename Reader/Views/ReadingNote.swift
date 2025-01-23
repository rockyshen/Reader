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
            VStack {
                NoteEntryAndList()
            }
        }
    }
}

#Preview {
    ReadingNote()
}
