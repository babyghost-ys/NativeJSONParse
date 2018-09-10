//
//  DataModel.swift
//  NativeJSONParse
//
//  Created by Peter Leung on 10/9/2018.
//  Copyright © 2018 Peter Leung. All rights reserved.
//

import Foundation

class DataHandler {
    
    //MARK: Function to start to request data from the internet
    func requestData(completion: @escaping ((_ newsItems: [NewsItem]) -> Void)) {
        
        let jsonUrlString = "https://en.winandmac.com/wp-json/wp/v2/posts/?per_page=10"
        
        guard let url = URL(string: jsonUrlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            guard let data = data else { return }
            
            do {
                let news = try JSONDecoder().decode([NewsItem].self, from: data)
                completion(news)
            } catch let jsonError {
                print("error \(jsonError.localizedDescription)")
            }
            
            }.resume()
    }
}
