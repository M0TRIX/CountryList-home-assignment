//
//  RestCountriesTests.swift
//  RestCountriesTests
//
//  Created by Daniel Dluznevskij on 2022-05-30.
//

import XCTest
@testable import RestCountries

class CountryListViewModelTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
        
        testingListWithEmpty()
        testingListWithData()
    }
    
    func testingListWithEmpty(){
        let viewModel:CountryListViewModel?
        viewModel = CountryListViewModel(service: ServiceApi(), countryList: [])
        XCTAssertEqual(viewModel?.countryList?.count, 0)
    }

    func testingListWithData(){
        let viewModel:CountryListViewModel?
        var country = Country(flags: Flags(png: "png", svg: "svg"), name: Name(common: "Test", official: "Test", nativeName: nil), currencies: ["Euro":Currency(name: "Euro", symbol: "Euro")], capital: ["Cap1","Cap2"], borders: nil, population: 10, flag: "FlagTest")
        viewModel = CountryListViewModel(service: ServiceApi(), countryList: [country])
        XCTAssertEqual(viewModel?.countryList?.count, 1)
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
