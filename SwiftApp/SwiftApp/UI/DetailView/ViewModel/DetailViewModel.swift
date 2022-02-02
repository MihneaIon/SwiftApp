//
//  DetailViewModel.swift
//  SwiftApp
//
//  Created by Mihnea Ion on 02.02.2022.
//

import Foundation
import SwiftUI

class DetailViewModel: DataService {
    
    @Published var detailModel = DetailModel(type: "", price: 0.0, participants: 0, backgroundColor: .red, sound: "")
    
    var type: String{
        return detailModel.type
    }
    
    var price: Double {
        return detailModel.price
    }
    
    var paricipants: Int {
        return detailModel.participants
    }
    
    var backgroundColor: Color {
        return detailModel.backgroundColor
    }
    
    var sound: String {
        return detailModel.sound
    }
    
    func updateType(_ type: String){
        detailModel.type = type
    }
    
    func updatePrice(_ price: Double){
        detailModel.price = price
    }
    
    func updateParticipants(_ participants: Int){
        detailModel.participants = participants
    }
    
    func updateAmbient(type: String) -> (Color, SoundEnum) {
        
        switch type {
        case "relaxation":
            return (.relaxation, .bell)
        case "busywork":
            return (.busywork, .dog)
        case "music":
            return (.orange, .knock)
        case "recreational":
            return (.indigo, .pop)
        case "social":
            return (.green, .window)
        default:
            return (.teal, .bell)
        }
    }
    
    func onAppear(homeData: HomeViewModel){
        updateType(homeData.bored!.type)
        updatePrice(homeData.bored!.price)
        updateParticipants(homeData.bored!.participants)
        detailModel.backgroundColor = updateAmbient(type: homeData.bored!.type).0
        detailModel.sound = (updateAmbient(type: homeData.bored!.type).1).rawValue
        playSound(sound: detailModel.sound, type: ConstantName.soundExtension)
    }
}
