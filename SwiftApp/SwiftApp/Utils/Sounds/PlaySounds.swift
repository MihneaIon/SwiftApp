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
        do{
            try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback)
                try AVAudioSession.sharedInstance().setActive(true)
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play() 

            
        } catch{
            print("Error: Couldn't fidn the wanted song")
        }
    }
    
}

func stopSound(sound: String, type: String) {
    
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do{
            try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback)
                try AVAudioSession.sharedInstance().setActive(true)
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.stop()

            
        } catch{
            print("Error: Couldn't stop the song")
        }
    }
    
}
