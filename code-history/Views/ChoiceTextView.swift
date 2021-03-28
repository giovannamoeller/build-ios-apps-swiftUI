//
//  ChoiceTextView.swift
//  code-history
//
//  Created by Giovanna Moeller on 13/03/21.
//

import SwiftUI

struct ChoiceTextView: View {
    
    let choiceText: String
    
    var body: some View {
        Text(choiceText)
            .padding(.vertical, 15.0).frame(width: 320).border(GameColor.accent, width: 1)
        
    }
}

struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "Helloo")
    }
}
