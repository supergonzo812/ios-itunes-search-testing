//
//  iTunes_SearchTests.swift
//  iTunes SearchTests
//
//  Created by Chris Gonzales on 3/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import iTunes_Search
/*
 
 Does decoding work?
 Does decoding fail when given bad data?
 Does it build the correct URL?
 Does it build the correct URLRequest?
 Are the search results saved properly?
 Is the completion handler called when data is good?
 Is the completion handler called when data is bad?
 Is the completion handler called when networking fails?
 
 */

class SearchResultControllerTests: XCTestCase {

    func testForSomeResults() {
        let controller = SearchResultController()
        
        let expectation = self.expectation(description: "Wait for results")
        controller.performSearch(for: "GarageBand",
                                 resultType: .software) {
                                    expectation.fulfill()
        }
        
        wait(for: [expectation],
             timeout: 5)
    }

}
