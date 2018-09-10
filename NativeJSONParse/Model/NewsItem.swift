//
//  NewsItem.swift
//  NativeJSONParse
//
//  Created by Peter Leung on 10/9/2018.
//  Copyright © 2018 Peter Leung. All rights reserved.
//

import Foundation

struct NewsItem: Codable {
    let newsTitle: NewsTitle?
    let imageUrl: String?
    let newsContent: NewsContent?
    
    private enum CodingKeys: String, CodingKey {
        case newsTitle = "title"
        case imageUrl = "featured_image_thumbnail_url"
        case newsContent = "content"
    }
}

struct NewsTitle: Codable {
    let rendered: String?
}

struct NewsContent: Codable {
    let rendered: String?
}
