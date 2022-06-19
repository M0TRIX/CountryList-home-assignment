//
//  ServiceApi.swift
//  RestCountries
//
//  Created by Ali Asadi on 3/29/1401 AP.
//

import Foundation

class ServiceApi{
    
    func getAllCountries(urlStr:String,compilation:@escaping([Country], URLResponse,Data)->()){
        
        guard let url = URL(string: urlStr) else { return }
        let urlRequest = URLRequest(url:url)
        URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            guard let data = data else { return }
            let decoder = JSONDecoder()
            do {
                let content =  try decoder.decode([Country].self, from: data)
                compilation(content ,response ?? URLResponse(),data)
            } catch (_) {
            }
        }.resume()
    }

}
