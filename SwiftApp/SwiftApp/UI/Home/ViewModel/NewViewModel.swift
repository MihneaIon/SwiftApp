//
//  NewViewModel.swift
//  SwiftApp
//
//  Created by Mihnea Ion on 03.02.2022.
//

import Foundation

class NewHomeViewModel: ObservableObject {
    
    var homeModel = HomeModel()
    var dataService = DataService()
    var repository = RepositoryLayer()
    
    @Published var customData: DomainBored?
    @Published var initialData: BoredModel?
    
    func fetch() -> DomainBored{
        
        
        if !homeModel.isPressed {
            homeModel.togglePressed()
            customData = repository.takeFilterBoredData()
        }
        return repository.filteredData
    }
}
