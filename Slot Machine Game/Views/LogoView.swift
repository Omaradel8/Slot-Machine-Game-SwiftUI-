//
//  LogoView.swift
//  Slot Machine Game
//
//  Created by Omar Adel on 27/07/2024.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        Image("gfx-slot-machine")
            .resizable()
            .scaledToFit()
            .frame(minWidth: 256,
                   idealWidth: 300,
                   maxWidth: 320,
                   minHeight: 112,
                   idealHeight: 130,
                   maxHeight: 140,
                   alignment: .center)
            .padding(.horizontal)
            .layoutPriority(1)
            .modifier(ShadowModifier())
    }
}

#Preview {
    LogoView()
}
