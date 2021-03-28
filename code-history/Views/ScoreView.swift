//
//  ScoreView.swift
//  code-history
//
//  Created by Giovanna Moeller on 27/03/21.
//

import SwiftUI

struct ScoreView: View {
    let viewModel: ScoreViewModel
    var body: some View {
        ZStack {
            GameColor.main.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Spacer()
                Text("Final Score:").font(.system(size: 22)).padding()
                Text("\(viewModel.percentage)%").font(.system(size: 56)).bold()
                Spacer()
                Text("\(viewModel.correctGuesses) ✅").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).padding()
                Text("\(viewModel.incorrectGuesses) ❌").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Spacer()
                NavigationLink(
                    destination: GameView(),
                    label: {
                        BottomTextView(str: "Re-take Quiz")
                    }
                )
            }.foregroundColor(.white)
            .navigationBarHidden(true)
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(viewModel: ScoreViewModel(correctGuesses: 8, incorrectGuesses: 2))
    }
}
