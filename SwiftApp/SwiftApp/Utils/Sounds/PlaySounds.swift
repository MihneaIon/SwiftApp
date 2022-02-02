//
//  PlaySounds.swift
//  SwiftApp
//
//  Created by Mihnea Ion on 02.02.2022.
//

import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String){
    
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch{
            print("Error: Couldn't fidn the wanted song")
        }
    }
    
}
