//
//  NetworkDataLoader.swift
//  iTunes Search
//
//  Created by Chris Gonzales on 3/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

protocol NetworkDataLoader {
    
    func loadData(using request: URLRequest, completion: @escaping (Data?, URLResponse?, Error?) -> Void)
    
}
