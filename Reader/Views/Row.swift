//
//  Row.swift
//  Reader
//
//  Created by 沈俊杰 on 2025/1/21.
//

import SwiftUI

struct Row: View {
    var article: Article
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(article.title)
                .font(.title3)
                .bold()
                .padding(.bottom,3)
            Text(article.body)
                .lineLimit(3)
        }
    }
}

//#Preview {
//    Row()
//}
