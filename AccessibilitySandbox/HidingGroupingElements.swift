//
//  HidingGroupingElements.swift
//  AccessibilitySandbox
//
//  Created by Purnaman Rai (College) on 24/03/2026.
//

import SwiftUI

struct HidingElements: View {
    var body: some View {
        Image(.character)
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 200)
        
        Image(decorative: "character") // By using decorative:, we're saying this image is just there to make the UI look better and doesn’t actually convey any information, so its unselectable
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 200)
        
        Image(.character)
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 200)
            .accessibilityHidden(true) // We can get the same result as above using the .accessibilityHidden(), which makes any view completely invisible to the accessibility system, so its unselectable
    }
}

struct GroupingElements: View {
    var body: some View {
        /*
        VStack {
            Text("Your Score Is")
            Text("1000")
        }
        // VoiceOver sees this as two unrelated text views, so it will either read “Your Score Is” or “1000” depending on what the user has selected.
         */
        
        // SOLUTION:
        VStack {
            Text("Your score is")
            Text("1000")
                .font(.title)
        }
        // .accessibilityElement(children: .combine) // This will cause both text views to be read together, with a short pause between them
        
        // OR
        
        // .accessibilityElement(children: .ignore) // This will cause both text views (children views of VStack) to be invisible to the VoiceOver and make it look like a single element
        .accessibilityElement() // We can just use it like this because, children: .ignore is the default value
        .accessibilityLabel("Your Score Is 1000") // Then add label so it reads naturally, without any pause
    }
}

#Preview {
    HidingElements()
}
