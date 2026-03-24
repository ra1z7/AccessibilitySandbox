//
//  HidingGroupingElements.swift
//  AccessibilitySandbox
//
//  Created by Purnaman Rai (College) on 24/03/2026.
//

import SwiftUI

struct HidingGroupingElements: View {
    var body: some View {
        Image(decorative: "character") // by using decorative:, we're saying this image is just there to make the UI look better and doesn’t actually convey any information
        
        Image(.character)
            .accessibilityHidden(true) // can get the same result using the .accessibilityHidden(), which makes any view completely invisible to the accessibility system
    }
}

#Preview {
    HidingGroupingElements()
}
