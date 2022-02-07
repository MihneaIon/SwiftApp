//
//  RepositoryImplementation.swift
//  SwiftApp
//
//  Created by Mihnea Ion on 03.02.2022.
//

import Foundation

//enum RepositoryError: Error {
//    case notFound
//}
//
//class RequestImp: BoredRrpository {
//    func get(acitvity: String, completionHandler: @escaping (DomainBored?, Error?) -> Void) {
//        let url = Endpoint.acivity.urlRequest
//        let task = URLSession.shared.dataTask(with: url) { (data: BoredModel?, response, error) in
//            if let error = error{
//                completionHandler(nil, error)
//                return
//            }
//            guard let boredData = data else {
//                completionHandler(nil, RepositoryError.notFound)
//                return
//            }
//
//            let domainBoredData = DomainBored(activity: boredData.activity, type: boredData.type, participants: boredData.participants, price: boredData.price)
//
//            completionHandler(domainBoredData, nil)
//        }
//        task.resume()
//    }
//
//    typealias T = DomainBored
//}


//    func get(acitvity: String, _ completion: @escaping ((Result<BoredModel?, ApiError>)?) -> Void) {
//        let url = Endpoint.acivity.urlRequest
//        let task = URLSession.shared.dataTask(with: url) { (data: (Result<BoredModel?, ApiError>)?, result, error) in
//            if let error = error {
//                completionHandler(nil, error)
//                return
//            }
//            guard let boredData = data else {
//                completionHandler(nil, RepositoryError.notFound)
//                return
//            }
////
////            let domainBored = DomainBored(activity: boredData.activity, type: boredData.type, participants: boredData.participants, price: boredData.price)
////
////            completionHandler(domainBored, nil)
////        }
////        task.resume()
//    }
//
//
////    typealias T = BoredModel
//
//
//
//}
