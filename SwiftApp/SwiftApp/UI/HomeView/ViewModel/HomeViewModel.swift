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
        takeBoredData()
        home.activity = bored?.activity
    }
    
}
