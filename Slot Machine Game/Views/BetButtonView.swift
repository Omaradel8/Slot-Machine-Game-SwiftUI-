//
//  BetButtonView.swift
//  Slot Machine Game
//
//  Created by Omar Adel on 31/07/2024.
//

import SwiftUI

struct BetButtonView: View {
    
    var isRight: Bool
    var coins: Int
    var isShowingCoins: Bool
    var textColor: Color = .white
    
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            
            if !isRight {
                coinsImage
            }
            
            Button(action: {
                print("Bet \(coins) coins")
            }) {
                Text("\(coins)")
                    .fontWeight(.heavy)
                    .foregroundColor(textColor)
                    .modifier(BetNumberModifier())
            }
            .modifier(BetCapsuleModifier())
            
            if isRight {
                coinsImage
            }
        }
    }
}

#Preview {
    BetButtonView(isRight: true, coins: 20, isShowingCoins: true)
}

extension BetButtonView {
    var coinsImage: some View {
        Image("gfx-casino-chips")
            .resizable()
            .opacity(isShowingCoins ? 1 : 0)
            .modifier(CasinoChipsModifier())
    }
}
