//
//  EndpointEnum.swift
//  SwiftApp
//
//  Created by Mihnea Ion on 01.02.2022.
//

import Foundation

enum Endpoint {
    case acivity
}

extension Endpoint: RequestProviding {
    
    var urlRequest: URLRequest {
        let domain = "https://www.boredapi.com/api/"
        switch self {
        case .acivity:
            guard let url = URL(string: domain + EndpointPath.acivity.rawValue) else {
                preconditionFailure("Invalid URL used to create URL Instance")
            }
            
            return URLRequest(url: url)
        }
    }
}
