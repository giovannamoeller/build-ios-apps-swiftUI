//
//  GameView.swift
//  code-history
//
//  Created by Giovanna Moeller on 10/03/21.
//
import SwiftUI

struct GameView: View {
    
    @StateObject var viewModel = GameViewModel() // Updated
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Spacer().frame(height: 50.0)
                Text(viewModel.questionProgressText).font(.callout).multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/).padding()
                QuestionView(question: viewModel.currentQuestion)
            }.foregroundColor(.white).environmentObject(viewModel).navigationBarHidden(true)
        }.background(
            NavigationLink(
                destination: ScoreView(viewModel: ScoreViewModel(correctGuesses: viewModel.correctGuesses, incorrectGuesses: viewModel.incorrectGuesses)),
                isActive: .constant(viewModel.gameIsOver),
                label: {
                    EmptyView()
                }
            )
        )
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
