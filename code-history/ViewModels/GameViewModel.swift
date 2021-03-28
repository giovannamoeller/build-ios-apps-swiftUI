//
//  GameViewModel.swift
//  code-history
//
//  Created by Giovanna Moeller on 27/03/21.
//

import Foundation
import SwiftUI

class GameViewModel: ObservableObject {
    @Published var game = Game() // notify any observers when changes are made to it.
    
    // Internal properties
    
    var currentQuestion: Question {
        game.currentQuestion
    }
    
    var questionProgressText: String {
        "\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions)"
    }
    
    var guessWasMade: Bool {
        if let _ = game.guesses[currentQuestion] {
            return true
        } else {
            return false
        }
    }
    
    func makeGuess(atIndex index: Int) {
        game.makeGuessForCurrentQuestion(atIndex: index)
    }
    
    func displayNextScreen() {
        game.updateGameStatus()
    }
    
    func color(forOptionIndex optionIndex: Int) -> Color {
        if let guessedIndex = game.guesses[currentQuestion] {
            if guessedIndex != optionIndex {
                return GameColor.main
            } else if guessedIndex == currentQuestion.correctAnswerIndex {
                return GameColor.correctGuess
            } else {
                return GameColor.incorrectGuess
            }
        } else {
            return GameColor.main
        }
    }
    
    var gameIsOver: Bool {
        game.isOver
    }
    
    var correctGuesses: Int {
       game.guessCount.correct
     }
    
     var incorrectGuesses: Int {
       game.guessCount.incorrect
     }
    
}
