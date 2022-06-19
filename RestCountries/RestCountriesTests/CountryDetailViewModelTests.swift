//
//  CountryDetailViewModelTests.swift
//  RestCountriesTests
//
//  Created by Ali Asadi on 3/30/1401 AP.
//

import XCTest
@testable import RestCountries

class CountryDetailViewModelTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        testingListWithEmpty()
        testingListWithData()
    }

    func testingListWithEmpty(){
        let viewModel:CountryDetailViewModel?
        viewModel = CountryDetailViewModel(country: nil)
        XCTAssertNil(viewModel?.country)
    }

    func testingListWithData(){
        let viewModel:CountryDetailViewModel?
        let country = Country(flags: Flags(png: "png", svg: "svg"), name: Name(common: "Test", official: "Test", nativeName: nil), currencies: ["Euro":Currency(name: "Euro", symbol: "Euro")], capital: ["Cap1","Cap2"], borders: nil, population: 10, flag: "FlagTest")
        viewModel = CountryDetailViewModel(country: country)
        XCTAssertNotNil(viewModel?.country)
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
