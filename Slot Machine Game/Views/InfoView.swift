//
//  InfoView.swift
//  Slot Machine Game
//
//  Created by Omar Adel on 31/07/2024.
//

import SwiftUI

struct InfoView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            LogoView()
            
            Spacer()
            
            Form {
                Section(header: Text("About the application")) {
                    FormRowView(firstItem: "Application",
                                secondItem: "Slot Machine")
                    FormRowView(firstItem: "Platforms",
                                secondItem: "iPhone, iPad, Mac")
                    FormRowView(firstItem: "Developer",
                                secondItem: "Omar Adel")
                    FormRowView(firstItem: "Designer",
                                secondItem: "Robert Petras")
                    FormRowView(firstItem: "Music",
                                secondItem: "Dan Lebowitz")
                    FormRowView(firstItem: "Copyright",
                                secondItem: "© All rights reserved.")
                    FormRowView(firstItem: "Version",
                                secondItem: "1.0")
                }
            }
            .font(.system(.body, design: .rounded))
        }
        .padding(.top, 40)
        .overlay(
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Image(systemName: "xmark.circle")
                    .font(.title)
            }
                .padding(.top, 30)
                .padding(.trailing, 20)
                .accentColor(Color.secondary)
            , alignment: .topTrailing
        )
    }
}

#Preview {
    InfoView()
}
