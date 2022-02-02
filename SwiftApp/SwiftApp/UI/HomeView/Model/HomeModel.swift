//
//  HomeModel.swift
//  SwiftApp
//
//  Created by Mihnea Ion on 01.02.2022.
//

import Foundation

struct HomeModel {
    
    var isPressed: Bool = false
    
    var url: Endpoint?
    
    var activity: String?
    
    mutating func togglePressed(){
        isPressed.toggle()
    }
}
