//
//  BoredModel.swift
//  SwiftApp
//
//  Created by Mihnea Ion on 01.02.2022.
//

import Foundation

//MARK: - Bored model

struct BoredModel: Codable {
    
    var activity: String
    var type: String
    var participants: Int
    var price: Double
    var link: String?
    var key: String
    var accessibility: Double
    
}
