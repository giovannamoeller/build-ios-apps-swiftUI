//
//  ScoreViewModel.swift
//  code-history
//
//  Created by Giovanna Moeller on 27/03/21.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
     
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
    
    var image: String {
        if percentage >= 50 {
            return "emoji1"
        } else {
            return "emoji2"
        }
    }
    
    var finalText: String {
        if percentage >= 50 {
            return "Wow! Congrats!"
        } else {
            return "Don't give up! You can do better next time."
        }
    }
}

