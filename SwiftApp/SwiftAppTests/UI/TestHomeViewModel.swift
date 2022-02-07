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
    
    func testModel_isPressed_ShouldREturnFalse(){
        let expectedResult = sut?.homeModel.isPressed
        XCTAssertEqual(expectedResult, false)
    }
    
    func testModel_isPressed_ShouldREturnFalse_After_Double_Toggle(){
        let expectedResult = sut?.homeModel.isPressed
        sut?.updateIsPressed()
        sut?.updateIsPressed()
        XCTAssertEqual(expectedResult, false)
    }
    
    func testModel_url_ShouldBeValid(){
        sut?.homeModel.url = Endpoint.acivity
        let expectedUrl = sut?.homeModel.url
        XCTAssertEqual(expectedUrl, homeModel?.url)
    }
    
    func testViewModel_FunctionTakeActiviteis(){
        
        sut?.takeBoredData()
        let expectedResult = sut?.bored
        print("...", expectedResult)
//        XCTAssertNotNil(expectedResult)
        
    }

}
