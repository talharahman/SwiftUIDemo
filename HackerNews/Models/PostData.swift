//
//  PostData.swift
//  HackerNews
//
//  Created by Talha Rahman on 9/22/20.
//  Copyright © 2020 Talha Rahman. All rights reserved.
//

import Foundation

struct Results : Decodable {
    let hits: [Post]
}

struct Post : Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
