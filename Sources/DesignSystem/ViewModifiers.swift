import SwiftUI

public struct DSHeading: ViewModifier {
    @Environment(\.design) private var design
    public func body(content: Content) -> some View {
        content
            .font(design.typography.title1)
            .foregroundColor(design.colors.textPrimary)
    }
}

public struct DSBody: ViewModifier {
    @Environment(\.design) private var design
    public func body(content: Content) -> some View {
        content
            .font(design.typography.body)
            .foregroundColor(design.colors.textSecondary)
    }
}

public extension View {
    func dsHeading() -> some View { modifier(DSHeading()) }
    func dsBody() -> some View { modifier(DSBody()) }
}
