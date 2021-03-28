//
//  QuestionView.swift
//  code-history
//
//  Created by Giovanna Moeller on 27/03/21.
//
import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var viewModel: GameViewModel
    let question: Question
    
    var body: some View {
        VStack {
            Text(question.questionText).font(.largeTitle).bold().multilineTextAlignment(.center)
            Spacer()
            ForEach(0..<question.possibleAnswers.count) { answerIndex in
                Button(action: {
                    viewModel.makeGuess(atIndex: answerIndex)
                    }, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[answerIndex]).background(viewModel.color(forOptionIndex: answerIndex))
                    }).disabled(viewModel.guessWasMade)
                Spacer().frame(height: 30)
            }
            if viewModel.guessWasMade {
                Button(action: {
                    viewModel.displayNextScreen()
                }) {
                    BottomTextView(str: "Next")
                }
            }
        }.font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(question: Game().currentQuestion).environmentObject(GameViewModel())
    }
}
