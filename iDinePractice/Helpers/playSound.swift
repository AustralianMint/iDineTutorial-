//
//  playSound.swift
//  iDinePractice
//
//  Created by Thomas Frey on 03.04.23.
//

import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String)  {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("ERROR: Could not find and load the audio file")
        }
    }
}
