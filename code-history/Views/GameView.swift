//
//  GameView.swift
//  code-history
//
//  Created by Giovanna Moeller on 10/03/21.
//

import SwiftUI

struct GameView: View {
    
    let question = Question(
        questionText: "What was the first computer bug?",
        possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"],
        correctAnswerIndex: 2
    )
    
    @StateObject var viewModel = GameViewModel() // Updated
    
    var body: some View {
        ZStack {
            (GameColor.main).ignoresSafeArea()
            VStack {
                Spacer().frame(height: 50)
                Text(viewModel.questionProgressText).font(.callout).multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/).padding()
                QuestionView(question: viewModel.currentQuestion)
                
                Spacer()
                
            }.foregroundColor(.white).padding().environmentObject(viewModel) // access to the view model in our QuestionView
            .navigationBarHidden(true) // hide back button
            
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
