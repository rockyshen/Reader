//
//  ReaderApp.swift
//  Reader
//
//  Created by 沈俊杰 on 2025/1/21.
//

import SwiftUI

@main
struct ReaderApp: App {
    
    var body: some Scene {
        WindowGroup {
            // TODO 此处调用LocalAuthentication可以添加解锁逻辑
            TabView {
                ContentView()
                    .tabItem { Label("阅读列表", systemImage: "books.vertical") }
                ReadingNote()
                    .tabItem { Label("笔记", systemImage: "note.text") }
            }
            
        }
    }
}
