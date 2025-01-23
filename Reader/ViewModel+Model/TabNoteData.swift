//
//  TabNoteData.swift
//  Reader
//  笔记页：数据
//  Created by 沈俊杰 on 2025/1/23.
//

import Foundation
import SwiftUI

struct Note: Codable, Identifiable {
    var id: UUID          // 这是什么类型？
    var title: String
    var content: String
}

class TabNoteData: ObservableObject {
    @Published var notes: [Note] = []
    
    // sandboxURL就是专属于这个App的存储路径
    static let sandboxURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
    // 在本应用下，创建一个Note相关JSON文件，用来存笔记
    let noteURL = sandboxURL.appendingPathComponent("notes.json")
    
    // 将数据存入本地File Manager位置
    init() {
        notes = getNotes()
    }
    
    func getNotes() -> [Note] {
        var result: [Note] = []
        if FileManager.default.fileExists(atPath: noteURL.path) {    // 判断这个路径下的这个文件中是否有内容
            let data = try! Data(contentsOf: noteURL)
            result = try! JSONDecoder().decode([Note].self, from: data)
        }
        return result
    }
    
    func saveNotes() {
        DispatchQueue.global(qos: .userInitiated).async {     // 开启子线程，后台去存
            let data = try? JSONEncoder().encode(self.notes)
            try? data?.write(to: self.noteURL)
        }
        
    }
}

