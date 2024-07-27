//
//  ReelView.swift
//  Slot Machine Game
//
//  Created by Omar Adel on 28/07/2024.
//

import SwiftUI

struct ReelView: View {
    
    var body: some View {
        Image("gfx-reel")
            .resizable()
            .modifier(ReelImageModifier())
    }
}

#Preview {
    ReelView()
        .previewLayout(.fixed(width: 220, height: 220))
}
