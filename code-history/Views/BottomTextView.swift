//
//  BottomTextView.swift
//  code-history
//
//  Created by Giovanna Moeller on 26/03/21.
//

import SwiftUI

struct BottomTextView: View {
    let str: String
    var body: some View {
        HStack {
            Spacer()
            Text(str)
                .font(.body)
                .bold()
                .padding()
            Spacer()
            }.background(GameColor.accent)
            .cornerRadius(6.0)
        .frame(width: 320)
        }
}

struct BottomTextView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTextView(str: "Test")
    }
}
