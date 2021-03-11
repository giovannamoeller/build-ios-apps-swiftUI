//
//  ContentView.swift
//  code-history
//
//  Created by Giovanna Moeller on 10/03/21.
//

import SwiftUI

struct ContentView: View {
    let mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
    
    var body: some View {
        ZStack {
            mainColor.ignoresSafeArea()
            VStack {
                Spacer().frame(height: 50)
                Text("1/10").font(.callout).multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/).padding()
                Text("What was the first computer bug?").font(Font.largeTitle).bold().multilineTextAlignment(.center)
                
                Spacer()
                
                VStack {
                    Button(action: {
                        print("Tapped on action 1")
                        }, label: {
                            Text("Button")
                        }).padding(.vertical, 15.0).padding(.horizontal, 150.0).border(accentColor, width: 1)
                    Spacer().frame(height: 30)
                    Button(action: {
                        print("Tapped on action 2")
                        }, label: {
                            Text("Button")
                        }).padding(.vertical, 15.0).padding(.horizontal, 150.0).border(accentColor, width: 1)
                    Spacer().frame(height: 30)
                    Button(action: {
                        print("Tapped on action 3")
                        }, label: {
                            Text("Button")
                        }).padding(.vertical, 15.0).padding(.horizontal, 150.0).border(accentColor, width: 1)
                    Spacer().frame(height: 30)
                    Button(action: {
                        print("Tapped on action 4")
                        }, label: {
                            Text("Button")
                        }).padding(.vertical, 15.0).padding(.horizontal, 150.0).border(accentColor, width: 1)
                    Spacer().frame(height: 30)
                }.font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
            }.foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
