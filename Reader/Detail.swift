//
//  Detail.swift
//  Reader
//  文章的详细视图
//  Created by 沈俊杰 on 2025/1/21.
//

import SwiftUI

struct Detail: View {
    var article: Article
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text(article.body)
            }
            .padding()
        }
        .navigationTitle(article.title)
    }
}

#Preview {
    Detail(article: Article(id: 1, title: "标题", body: "正文"))
}
