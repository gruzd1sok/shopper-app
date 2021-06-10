//
//  shopper_appTests.swift
//  shopper-appTests
//
//  Created by Илья Груздев on 22.03.2021.
//

import XCTest
@testable import shopper_app

class shopper_appTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testGetHours(){
        XCTAssert(Wage.getHourse(forWage: 25, andPrice: 100) == 4)
        XCTAssert(Wage.getHourse(forWage: 15.50, andPrice: 250.53) == 17)
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
