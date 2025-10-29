import SwiftUI

public protocol DesignSystemProtocol {
    var colors: DSColors { get }
    var typography: DSTypography { get }
}

public struct DefaultDesignSystem: DesignSystemProtocol {
    public let colors = DSColors()
    public let typography = DSTypography()
    public init() {}
}

public enum DesignSystem {
    // Default instance used when importing. You can replace this at app startup.
    public static var current: DesignSystemProtocol = DefaultDesignSystem()
}

// Environment key to override in a subtree
private struct DesignSystemKey: EnvironmentKey {
    static let defaultValue: DesignSystemProtocol = DesignSystem.current
}

public extension EnvironmentValues {
    var design: DesignSystemProtocol {
        get { self[DesignSystemKey.self] }
        set { self[DesignSystemKey.self] = newValue }
    }
}

public extension View {
    func design(_ design: DesignSystemProtocol) -> some View {
        environment(\.design, design)
    }
}
