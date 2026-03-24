//
//  CustomViewModifiers.swift
//  AccessibilitySandbox
//
//  Created by Purnaman Rai (College) on 24/03/2026.
//

import SwiftUI

struct MonospaceCaptionModifier: ViewModifier {
    var readAloud: Bool
    
    func body(content: Content) -> some View {
        content
            .font(.caption2)
            .fontDesign(.monospaced)
            .accessibilityHidden(!readAloud) // If readAloud is true, accessibilityHidden is false
    }
}

struct RoundedBorderModifier: ViewModifier {
    var cornerRadius: CGFloat
    
    func body(content: Content) -> some View {
        content
            .padding()
            .background(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(.secondary, lineWidth: 1)
            )
    }
}

extension View {
    /// Wraps the view in a rounded rectangle border with standard padding.
    /// - Parameter radius: The roundness of the corners (defaults to 10).
    func roundedBorderStyle(radius: CGFloat = 10) -> some View {
        self.modifier(RoundedBorderModifier(cornerRadius: radius))
    }
    
    /// Applies a monospaced caption style.
    /// - Parameter readAloud: Determines if Screen Readers should announce this view. Defaults to false.
    func monospaceCaption(readAloud: Bool = false) -> some View {
        self.modifier(MonospaceCaptionModifier(readAloud: readAloud))
    }
}
