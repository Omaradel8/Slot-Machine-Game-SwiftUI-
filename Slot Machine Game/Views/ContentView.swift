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
                }
                
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
