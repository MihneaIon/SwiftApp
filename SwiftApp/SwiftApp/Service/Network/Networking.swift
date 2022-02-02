//
//  Networking.swift
//  SwiftApp
//
//  Created by Mihnea Ion on 01.02.2022.
//

import Foundation

protocol NetworkingProtocol {
    func fetchData<T: Decodable>( _ requestProvider: RequestProviding, _ completion: @escaping (Result<T, ApiError>) -> Void)
}

internal class Networking: NetworkingProtocol {
    
    static let shared = Networking()
    
    private weak var dataTask: URLSessionDataTask?
    
    func fetchData<T>( _ requestProvider: RequestProviding, _ completion: @escaping (Result<T, ApiError>) -> Void) where T : Decodable {
        
        let urlResponse = requestProvider.urlRequest
        
        dataTask = URLSession.shared.dataTask(with: urlResponse, completionHandler: { data, response, error in
            do {
                guard let data = data else {
                    preconditionFailure("No error was received but we also don't accessed data")
                }
                
                let decodedData = try JSONDecoder().decode(T.self, from: data)
                completion(.success(decodedData))
            } catch {
                print("...", error)
                let apiError = ApiError.parsing(error as? DecodingError)
                completion(.failure(ApiError.parsing(error as? DecodingError)))
                           }
                           })
                dataTask?.resume()
            }
            
            func cancelRequest() {
                dataTask?.cancel()
            }
            
        }
