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
                    Text("Your\nCoins".uppercased())
                        .scoreLabelStyle()
                        .multilineTextAlignment(.trailing)
                    
                    Text("100")
                        .scoreNumberStyle()
                        .shadow(color: Color("ColorTransparentBlack"),
                                radius: 0, x: 0, y: 3)
                        .layoutPriority(1)
                }
                .padding(.vertical, 4)
                .padding(.horizontal, 16)
                .frame(minWidth: 128)
                .background(
                    Capsule()
                        .foregroundColor(Color("ColorTransparentBlack"))
                )
                
                Spacer()
                
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
        .font(.title)
        .accentColor(Color.white)
    }
    
    var infoViewButton: some View {
        Button {
            print("Info View")
        } label: {
            Image(systemName: "info.circle")
        }
        .font(.title)
        .accentColor(Color.white)
    }
}
