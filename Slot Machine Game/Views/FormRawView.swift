//
//  FormRawView.swift
//  Slot Machine Game
//
//  Created by Omar Adel on 31/07/2024.
//

import SwiftUI

struct FormRowView: View {
    var firstItem: String
    var secondItem: String
    
    var body: some View {
        HStack {
            Text(firstItem)
                .foregroundColor(Color.gray)
            
            Spacer()
            
            Text(secondItem)
        }
    }
}
