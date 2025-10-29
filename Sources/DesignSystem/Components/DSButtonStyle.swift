import SwiftUI

public struct DSPrimaryButtonStyle: ButtonStyle {
    @Environment(\.design) private var design
    
    public init() {}
    
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(design.typography.headline)
            .foregroundColor(design.colors.surface)
            .padding(.vertical, 12)
            .padding(.horizontal, 20)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(design.colors.primary)
                    .opacity(configuration.isPressed ? 0.85 : 1.0)
            )
            .scaleEffect(configuration.isPressed ? 0.98 : 1.0)
            .animation(.easeOut(duration: 0.12), value: configuration.isPressed)
    }
}

public extension View {
    func dsPrimaryButtonStyle() -> some View {
        self.buttonStyle(DSPrimaryButtonStyle())
    }
}