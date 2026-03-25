//
//  VoiceControlLabels.swift
//  AccessibilitySandbox
//
//  Created by Purnaman Rai (College) on 25/03/2026.
//

import SwiftUI

struct VoiceControlLabels: View {
    var body: some View {
        VStack(spacing: 30) {
            Button("Sajjan Raj Vaidya") {
                print("La la la la...")
            }
            .accessibilityInputLabels(["Sajjan", "Vaidya", "SRV", "Sajjan Raj Vaidya"])
            // Because that has "Sajjan Raj Vaidya" right there on the screen, it can be activated by saying "Press Sajjan Raj Vaidya".
            
            Text("You can activate this button by saying:\n • 'Press Sajjan Raj Vaidya'\n • 'Press Sajjan'\n • 'Press Vaidya' or\n • 'Press SRV'")
                .monospaceCaption()
        }
        .roundedBorderStyle()
    }
}

#Preview {
    VoiceControlLabels()
}
