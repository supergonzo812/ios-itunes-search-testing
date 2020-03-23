//
//  URLSession+NetworkDataLoader.swift
//  iTunes Search
//
//  Created by Chris Gonzales on 3/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation


extension URLSession: NetworkDataLoader {
    
    func loadData(using request: URLRequest, completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
        dataTask(with: request) { (data, response, error) in
            completion(data, response, error)
        }.resume()
    }
    
}
