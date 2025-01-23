//
//  NoteEntryAndList.swift
//  Reader
//  记笔记的页面
//  Created by 沈俊杰 on 2025/1/23.
//

import SwiftUI
import Foundation

struct NoteEntryAndList: View {
    @StateObject var noteData = TabNoteData()
    
    @State var titleInput = ""
    @State var contentInput = ""
    
    
    var body: some View {
        VStack {
            VStack {
                TextField("Title", text: $titleInput)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Content", text: $contentInput)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                HStack {
                    Spacer()
                    Button(action: {
                        // 提交内容至TabNoteData
                        let id = UUID()
                        let newNote = Note(id: id, title: titleInput, content: contentInput)
                        noteData.notes.append(newNote)
                        noteData.saveNotes()
                        // 清空
                        titleInput = ""
                        contentInput = ""
                    }) {
                        RoundButton(text: "提交笔记", image: "note.text.badge.plus")
                    }
                }
            }
            .padding()
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 3)
            .padding()
            
            //读取现有笔记
            List {
                ForEach(noteData.notes) {note in
                    VStack(alignment: .leading, spacing: 10){
                        Text(note.title).font(.title3).bold()
                        Text(note.content)
                    }
                }
                .onDelete(perform: delete)
            }
        }
    }
    
    func delete(at offsets: IndexSet) {
        noteData.notes.remove(atOffsets: offsets)
        noteData.saveNotes()
    }
}

#Preview {
    NoteEntryAndList()
}
