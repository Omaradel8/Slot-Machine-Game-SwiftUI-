//
//  ContentView.swift
//  Slot Machine Game
//
//  Created by Omar Adel on 27/07/2024.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTOES
    let symbols = ["gfx-bell", "gfx-cherry", "gfx-coin", "gfx-grape", "gfx-seven", "gfx-strawberry"]
    
    @State private var highScore: Int = 0
    @State private var coins: Int = 100
    @State private var betAmount: BetAmount = .ten
    @State private var reels: Array = [0, 1, 2]
    @State private var showingInfoView: Bool = false
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            
            // MARK: - BACKGROUND
            LinearGradient(gradient: Gradient(colors: [Color("ColorPink"), Color("ColorPurple")]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack(alignment: .center, spacing: 5) {
                // MARK: - HEADER
                
                LogoView()

                Spacer()
                
                // MARK: - SCRORE
                HStack {
                    ScoreBoardView(coinsValue: $coins)
                    
                    Spacer()
                    
                    HighScoreView(highScore: $highScore)
                }
                
                // MARK: - SLOT MACHINE
                VStack(alignment: .center, spacing: 0) {
                    // MARK: - REEL #1
                    ZStack {
                        ReelView()
                        
                        Image(symbols[reels[0]])
                            .resizable()
                            .modifier(ReelImageModifier())
                    }
                    
                    HStack(alignment: .center, spacing: 0) {
                        // MARK: - REEL #2
                        ZStack {
                            ReelView()
                            
                            Image(symbols[reels[1]])
                                .resizable()
                                .modifier(ReelImageModifier())
                        }
                        
                        Spacer()
                        
                        // MARK: - REEL #3
                        ZStack {
                            ReelView()
                            
                            Image(symbols[reels[2]])
                                .resizable()
                                .modifier(ReelImageModifier())
                        }
                    }
                    .frame(maxWidth: .infinity)
                    
                    // MARK: - SPIN BUTTON
                    Button(action: {
                        // SPIN THE REELS
                        spinReels()
                        
                        // CHECK WINNING
                        checkWinning()
                    }, label: {
                        Image("gfx-spin")
                            .renderingMode(.original)
                            .resizable()
                            .modifier(ReelImageModifier())
                    })
                }
                .layoutPriority(2)
                
                // MARK: - Footer View
                Spacer()
                
                HStack {
                    // MARK: - Bet 20
                    BetButtonView(isRight: true,
                                  coins: 20,
                                  isShowingCoins: betAmount == .twenty ? true : false) {
                        betAmount = .twenty
                    }
                    
                    // MARK: - Bet 10
                    BetButtonView(isRight: false,
                                  coins: 10,
                                  isShowingCoins: betAmount == .ten ? true : false,
                                  textColor: .yellow) {
                        betAmount = .ten
                    }
                }
            }
            // MARK: - Info Button
            .padding(.horizontal, 8)
            .overlay (
                resetGameButton
            , alignment: .topLeading)
            .overlay(
                infoViewButton
                , alignment: .topTrailing)
            .padding()
            .frame(maxWidth: .infinity)
        }
        .sheet(isPresented: $showingInfoView, content: {
            InfoView()
        })
    }
}

// MARK: - PREVIEW
#Preview {
    ContentView()
}

// MARK: - DESIGN VARIABLES
extension ContentView {
    var resetGameButton: some View {
        Button {
            print("Reset the game")
        } label: {
            Image(systemName: "arrow.2.circlepath.circle")
        }
        .modifier(OverlayButtonModifier())
    }
    
    var infoViewButton: some View {
        Button {
            self.showingInfoView = true
        } label: {
            Image(systemName: "info.circle")
        }
        .modifier(OverlayButtonModifier())
    }
}

// MARK: - FUNCTIONS
extension ContentView {
    
    // SPIN THE REELS
    func spinReels() {
        reels = reels.map( { _ in
            Int.random(in: 0...symbols.count - 1)
        } )
    }
    // CHECK THE WINNING
    func checkWinning() {
        if areAllElementsEqual(reels) {
            // PLAYER WINS
            // NEW HIGH SCORE
        }else{
            // PLAYER LOSES
        }
    }
    
    // GAME IS OVER
}
