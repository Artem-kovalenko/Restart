//
//  AudioPlayer.swift
//  Restart
//
//  Created by Артём Коваленко on 24.07.2023.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

// sound - name
// type - file type (mp3, mp4)
func playSound(sound: String, type: String) {
    // find sound file in Build
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print(error)
        }
    }
}
