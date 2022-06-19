//
//  CountryListViewModel.swift
//  RestCountries
//
//  Created by Daniel Dluznevskij on 2022-05-30.
//

import Foundation

class CountryListViewModel {
    
    private(set) var countryList: [Country]?
    var serviceApi:ServiceApi?
    
    init(service:ServiceApi,countryList:[Country]?) {
        serviceApi = service
        self.countryList = countryList
    }
    
    func getCountries(complition:@escaping()->()){
        let url = "https://restcountries.com/v3.1/all"
        serviceApi?.getAllCountries(urlStr: url, compilation: { countries, response, data in
            self.countryList = countries
            complition()
        })
    }
}
