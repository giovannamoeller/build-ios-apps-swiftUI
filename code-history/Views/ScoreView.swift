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
            GameColor.main.ignoresSafeArea()
            VStack {
                Spacer()
                Text("Final Score:").font(.system(size: 22)).padding()
                Text("\(viewModel.percentage)%").font(.system(size: 50)).bold()
                Spacer()
                
                VStack {
                    Image(viewModel.image).resizable().aspectRatio(contentMode: .fit).frame(height: 150.0)
                    
                    Text(viewModel.finalText).font(.title).bold().padding().multilineTextAlignment(.center)
                }
                
                Spacer()
                Text("\(viewModel.correctGuesses) ✅").font(.title).padding()
                Text("\(viewModel.incorrectGuesses) ❌").font(.title)
                Spacer()
                
                NavigationLink(
                    destination: GameView(),
                    label: {
                        BottomTextView(str: "Re-take Quiz")
                    })
            }.foregroundColor(.white)
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(viewModel: ScoreViewModel(correctGuesses: 8, incorrectGuesses: 9))
    }
}
