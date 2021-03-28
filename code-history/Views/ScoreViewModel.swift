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
}

