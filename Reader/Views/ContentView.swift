//
//  ContentView.swift
//  Reader
//
//  Created by 沈俊杰 on 2025/1/21.
//

import SwiftUI

struct ContentView: View {
    @StateObject var data = TabReadingData()    // 订阅数据，在父视图中订阅数据
    
    //@State var darkMode = false  // App退到后台，这个值就没了
    @AppStorage("darkMode") var darkMode = false   // 应用存储
    
    var body: some View {
        // 导航视图
        NavigationView {
            List(data.articles) { article in
                NavigationLink(destination:
                    Detail(article: article)) {
                    Row(article: article)
                }
            }
            .navigationBarTitle("编辑推荐")
            .toolbar {
                Setting(darkMode: $darkMode)
            }
        }
        .preferredColorScheme(darkMode ? .dark : .light)
    }
}

#Preview {
    ContentView()
}
