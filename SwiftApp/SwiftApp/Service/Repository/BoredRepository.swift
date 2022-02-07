//
//  BoredRepository.swift
//  SwiftApp
//
//  Created by Mihnea Ion on 03.02.2022.
//

import Foundation

protocol BoredRrpository {
    
    associatedtype T
    
//    func get(acitvity: String, completionHandler: @escaping (Result<T?, ApiError>)? -> Void)
    
    func get(acitvity: String, completionHandler: @escaping (T?, Error?) -> Void)
    
}
