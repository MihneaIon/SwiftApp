//
//  TestHomeViewModel.swift
//  SwiftAppTests
//
//  Created by Mihnea Ion on 02.02.2022.
//

import XCTest
@testable import SwiftApp

class TestHomeViewModel: XCTestCase {
    
    var homeModel: HomeModel?
    var sut: HomeViewModel?

    override func setUpWithError() throws {
        homeModel = HomeModel(isPressed: false, url: Endpoint.acivity, activity: "music")
        sut = HomeViewModel()
    }

    override func tearDownWithError() throws {
        homeModel = nil
        sut = nil
    }

    func testModel_togglePressed_ShouldReturnTrue(){
        sut?.updateIsPressed()
        let receivedResult = sut?.homeModel.isPressed
        XCTAssertEqual(receivedResult, true)
    }

}
