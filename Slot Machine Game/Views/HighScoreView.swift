//
//  HighScoreView.swift
//  Slot Machine Game
//
//  Created by Omar Adel on 28/07/2024.
//

import SwiftUI

struct HighScoreView: View {
    
    @Binding var highScore: Int
    
    var body: some View {
        HStack {
            Text("200")
                .scoreNumberStyle()
                .modifier(ScoreNumberModifier())
            
            Text("High\nScore".uppercased())
                .scoreLabelStyle()
                .multilineTextAlignment(.leading)
        }
        .modifier(ScoreContainerModifier())
    }
}

#Preview {
    HighScoreView(highScore: .constant(200))
}
