//
//  ContentView.swift
//  Reader
//
//  Created by 沈俊杰 on 2025/1/21.
//

import SwiftUI

struct ContentView: View {
    @StateObject var data = Data()    // 订阅数据，在父视图中订阅数据
    
    var body: some View {
        NavigationView {
            List(data.articles) { article in
                NavigationLink(destination:
                    Detail(article: article)) {
                    Row(article: article)
                }
            }
            .navigationTitle("编辑推荐")
        }
        
    }
}

#Preview {
    ContentView()
}
