//
//  ContentView.swift
//  Slot Machine Game
//
//  Created by Omar Adel on 27/07/2024.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTOES
    
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
                    ScoreBoardView()
                    
                    Spacer()
                    
                    HighScoreView()
                }
                
                // MARK: - SLOT MACHINE
                VStack(alignment: .center, spacing: 0) {
                    // MARK: - REEL #1
                    ZStack {
                        ReelView()
                        
                        Image("gfx-bell")
                            .resizable()
                            .modifier(ReelImageModifier())
                    }
                    
                    HStack(alignment: .center, spacing: 0) {
                        // MARK: - REEL #2
                        ZStack {
                            ReelView()
                            
                            Image("gfx-seven")
                                .resizable()
                                .modifier(ReelImageModifier())
                        }
                        
                        Spacer()
                        
                        // MARK: - REEL #3
                        ZStack {
                            ReelView()
                            
                            Image("gfx-cherry")
                                .resizable()
                                .modifier(ReelImageModifier())
                        }
                    }
                    .frame(maxWidth: .infinity)
                    
                    // MARK: - SPIN BUTTON
                    Button(action: {
                        print("Spin")
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
                                  isShowingCoins: false)
                    
                    // MARK: - Bet 10
                    BetButtonView(isRight: false,
                                  coins: 10,
                                  isShowingCoins: true,
                                  textColor: .yellow)
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
            print("Info View")
        } label: {
            Image(systemName: "info.circle")
        }
        .modifier(OverlayButtonModifier())
    }
}
