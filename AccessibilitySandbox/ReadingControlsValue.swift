//
//  ReadingControlsValue.swift
//  AccessibilitySandbox
//
//  Created by Purnaman Rai (College) on 24/03/2026.
//

import SwiftUI

struct ReadingControlsValue: View {
    @State private var value = 10
    
    var body: some View {
        VStack(spacing: 30) {
            VStack(spacing: 30) {
                HStack {
                    Button("Decrease") { value -= 1 }
                    Text("Value: \(value)")
                    Button("Increase") { value += 1 }
                }
                // This is not a great experience with VoiceOver because all users will hear is “Increment” or “Decrement” every time they tap one of the buttons.
                
                Text("Normal")
                    .monospaceCaption()
            }
            .roundedBorderStyle()
            
            VStack(spacing: 30) {
                HStack {
                    Text("Value: \(value)")
                }
                .accessibilityElement()
                .accessibilityLabel("Value")
                .accessibilityValue(String(value))
                .accessibilityAdjustableAction { direction in
                    switch direction {
                    case .increment:
                        value += 1
                    case .decrement:
                        value -= 1
                    default: // we also need a special default case to handle unknown future values – Apple has reserved the right to add other kinds of adjustments in the future.
                        print("Not Handled.")
                    }
                }
                
                Text(".accessibilityElement()\n.accessibilityLabel()\n.accessibilityValue()\n.accessibilityAdjustableAction{}")
                    .monospaceCaption()
            }
            .roundedBorderStyle()
        }
    }
}

#Preview {
    ReadingControlsValue()
}
