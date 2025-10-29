import SwiftUI

public struct DSTypography {
    public init() {}
    
    // Use dynamic system TextStyles so accessibility & dynamic type behave well.
    public var largeTitle: Font { .system(.largeTitle, design: .default) }
    public var title1: Font { .system(.title, design: .default) }
    public var title2: Font { .system(.title2, design: .default) }
    public var headline: Font { .system(.headline, design: .default) }
    public var body: Font { .system(.body, design: .default) }
    public var callout: Font { .system(.callout, design: .default) }
    public var caption: Font { .system(.caption, design: .default) }
    
    // Helper for custom fonts (keep relativeTo for scaling)
    public func custom(_ name: String, size: CGFloat, relativeTo style: Font.TextStyle) -> Font {
        Font.custom(name, size: size, relativeTo: style)
    }
}
