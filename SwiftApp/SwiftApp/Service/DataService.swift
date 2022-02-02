//
//  DataService.swift
//  SwiftApp
//
//  Created by Mihnea Ion on 01.02.2022.
//

import Foundation

class DataService: ObservableObject {
    
    var homeModel = HomeModel()
    
    var network = Networking()
    
    @Published var bored: BoredModel?
    
    var error: ApiError?
    
    func takeBoredData() {
        
        if homeModel.isPressed {
            self.network.fetchData(Endpoint.acivity) { (result: Result<BoredModel, ApiError>) in
                DispatchQueue.main.async {
                    switch result {
                    case .success(let bored):
                        print("success", bored)
                        self.bored = bored
                    case .failure(let error):
                        print("Error!", error)
                    }
                }
            }
        }
    }
}
