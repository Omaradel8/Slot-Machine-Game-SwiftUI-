//
//  Modifiers.swift
//  Slot Machine Game
//
//  Created by Omar Adel on 27/07/2024.
//

import SwiftUI

struct ShadowModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .shadow(color: Color("ColorTransparentBlack"),
                    radius: 0, x: 0, y: 0)
    }
    
    
}
