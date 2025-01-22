//
//  Data.swift
//  Reader
//  从互联网获取JSON数据，并进行序列化与反序列化
//  Created by 沈俊杰 on 2025/1/21.
//

import SwiftUI

struct Article: Codable, Identifiable {
    var id: Int
    var title: String
    var body: String
}

class Data: ObservableObject {
    @Published var articles = [Article]()
    
    init() {
        let url = URL(string: "http://localhost:8080/article/list")!
    
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            DispatchQueue.main.async {
                self.articles = try! JSONDecoder().decode([Article].self, from: data!)
            }
        }.resume()
    }
}
