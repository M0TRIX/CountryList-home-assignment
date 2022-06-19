//
//  Country.swift
//  RestCountries
//
//  Created by Daniel Dluznevskij on 2022-05-30.
//

import Foundation

struct Country: Decodable {
    let flags: Flags
    let name: Name
    let currencies:[String: Currency]?
    let capital: [String]?
    let borders: [String]?
    let population: Int
    let flag: String
}

struct Currency: Decodable {
    let name, symbol: String?
}

struct Flags: Decodable {
    let png: String
    let svg: String
}

struct Name: Decodable {
    var common, official: String
    var nativeName: [String:NativeName]?
}

struct NativeName: Decodable {
    let official, common: String
}

