//
//  AccessibilityLabels.swift
//  AccessibilitySandbox
//
//  Created by Purnaman Rai (College) on 23/03/2026.
//

import SwiftUI

struct AccessibilityLabels: View {
    let images = [
        "ales-krivec-15949",
        "character",
        "galina-n-189483",
        "kevin-horstmann-141705",
        "nicolas-tissot-335096"
    ]
    
    let imageAccessibilityLabels = [
        "Tulips",
        "Female anime character",
        "Frozen tree buds",
        "Sunflowers",
        "Fireworks",
    ]
    
    @State private var selectedImage = Int.random(in: 0...4)
    
    var body: some View {
        /*
         Image(images[selectedImage])
         .resizable()
         .scaledToFit()
         .onTapGesture {
         selectedImage = Int.random(in: 0...4)
         }
         .accessibilityLabel(imageAccessibilityLabels[selectedImage])
         .accessibilityRemoveTraits(.isImage)
         .accessibilityAddTraits(.isButton)
         
         // We can control what VoiceOver reads for a given view by attaching two modifiers: .accessibilityLabel() and .accessibilityHint().
         // The label is read immediately, and should be a short piece of text that gets right to the point. If this view deletes an item from the user’s data, it might say “Delete”.
         // The hint is read after a short delay, and should provide more details on what the view is there for. It might say “Deletes an email from your inbox”, for example.
         */
        
        // That being said, adding and removing traits wouldn't have been required at all if we had just used a regular button rather than an image with a tap gesture. This is why it's preferable to use buttons rather than onTapGesture() wherever possible
        Button {
            selectedImage = Int.random(in: 0...4)
        } label: {
            Image(images[selectedImage])
                .resizable()
                .scaledToFit()
        }
        .accessibilityLabel(imageAccessibilityLabels[selectedImage])
    }
}

#Preview {
    AccessibilityLabels()
}
