//
//  GeneralModifiers.swift
//  Slot Machine Game
//
//  Created by Omar Adel on 28/07/2024.
//

import SwiftUI

struct OverlayButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title)
            .accentColor(.white)
    }
}
