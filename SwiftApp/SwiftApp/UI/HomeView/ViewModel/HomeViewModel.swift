//
//  HomeViewModel.swift
//  SwiftApp
//
//  Created by Mihnea Ion on 01.02.2022.
//

import Foundation
import SwiftUI

class HomeViewModel: DataService {
    
    func onAppear(){
        if !homeModel.isPressed {
            homeModel.togglePressed()
            takeBoredData()
        }
    }
    
    func updateIsPressed(){
        homeModel.togglePressed()
    }
}
