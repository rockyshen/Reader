//
//  Row.swift
//  Reader
//
//  Created by 沈俊杰 on 2025/1/21.
//

import SwiftUI

struct Row: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("人")
                .font(.title)
                .bold()
                .padding(.bottom)
            
            Text("我主力使用的社交平台是微博和Twitter，一个关注中文世界的资讯、一个关注英文世界。除了按照话题分类，某些合我胃口的博主我会添加到特别关注中，相当于最高级别的关注，不同类别的信息则在各自的列表里，这时候点开某一话题的列表，获取的信息是完整的，刷屏的过程是构建完整信息的过程，相同类别的信息相互印证或者矛盾（网络掐架）非常有意思。")
                .lineLimit(3)
        }
    }
}

#Preview {
    Row()
}
