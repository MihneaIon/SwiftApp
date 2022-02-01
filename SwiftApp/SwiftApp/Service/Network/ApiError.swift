//
//  ApiError.swift
//  SwiftApp
//
//  Created by Mihnea Ion on 01.02.2022.
//

import Foundation

enum ApiStatusCode: Int {
    case serviceUnavailable = 503
    case unauthorized = 401
    case internalServerError = 500
    case requestTimeout = 408
    case untrustedSSL = 495
    case notFound = 404
    case ok = 200
}

struct ApiError: Error {
    var statusCode: Int
    
    var message: String {
        switch status {
        case .notFound:
            return "Invalid Path"
        case .serviceUnavailable:
            return "Service Unavailable"
        case .unauthorized:
            return "Unauthorized"
        case .internalServerError:
            return "Internal Server Error"
        case .requestTimeout:
            return "Request timeout"
        case .untrustedSSL:
            return "Untrusted SSL"
        case .ok:
            return "Success"
        }
    }
    
    var status: ApiStatusCode {
        if statusCode == 404 {
            return .notFound
        }
        if statusCode == 503 {
            return .serviceUnavailable
        }
        if statusCode == 401 {
            return .unauthorized
        }
        if statusCode == 500 {
            return .internalServerError
        }
        if statusCode == 408 {
            return .requestTimeout
        }
        if statusCode == 495 {
            return .untrustedSSL
        }
        
        return .ok
    }
    
    init(statusCode: Int) {
        self.statusCode = statusCode
    }
}
