//
//  RepositoryLayer.swift
//  SwiftApp
//
//  Created by Mihnea Ion on 03.02.2022.
//

import Foundation
import SwiftUI


class RepositoryLayer: ObservableObject {
    
    @ObservedObject var dataService = DataService()
    
//    var dataService = DataService()
    
    @Published var filteredData: DomainBored = DomainBored(activity: "a", type: "b", participants: 0, price: 0.0)
    
    func takeFilterBoredData() -> DomainBored {
        
        var boreds = self.dataService.takeBoredData()
        var aux = self.dataService.bored
        print("boreds", boreds)
        print("aux", aux)
        self.filteredData = DomainBored(activity: dataService.bored!.activity, type: dataService.bored!.activity, participants: dataService.bored!.participants, price: dataService.bored!.price)
        print("a", self.filteredData)
        
        return filteredData
    }
    
}
