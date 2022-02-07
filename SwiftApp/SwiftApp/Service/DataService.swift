//
//  DataService.swift
//  SwiftApp
//
//  Created by Mihnea Ion on 01.02.2022.
//

import Foundation
import SwiftUI

class DataService: ObservableObject {
    
    @EnvironmentObject var newHomeViewModel: NewHomeViewModel
    
    var network = Networking()
    
    @Published var bored: BoredModel?
    
    var error: ApiError?
    
    func takeBoredData() {
        
        self.network.fetchData(Endpoint.acivity) { (result: Result<BoredModel, ApiError>) in
            DispatchQueue.main.async {
                switch result {
                case .success(let bored):
                    print("success", bored)
                    self.bored = bored
                    print(self.bored)
                case .failure(let error):
                    print("Error!", error)
                }
            }
        }
    }
}
