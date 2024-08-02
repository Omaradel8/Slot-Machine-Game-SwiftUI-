//
//  ScoreBoardView.swift
//  Slot Machine Game
//
//  Created by Omar Adel on 28/07/2024.
//

import SwiftUI

struct ScoreBoardView: View {
    
    @Binding var coinsValue: Int
    
    var body: some View {
        HStack {
            Text("Your\nCoins".uppercased())
                .scoreLabelStyle()
                .multilineTextAlignment(.trailing)
            
            Text("\(coinsValue)")
                .scoreNumberStyle()
                .modifier(ScoreNumberModifier())
        }
        .modifier(ScoreContainerModifier())
    }
}

#Preview {
    ScoreBoardView(coinsValue: .constant(100))
}
