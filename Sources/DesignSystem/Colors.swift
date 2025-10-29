import SwiftUI

public struct DSColors {
    public init() {}
    
    public var primary: Color { Color("Primary", bundle: Bundle.moduleOrMain) }
    public var primaryContainer: Color { Color("PrimaryContainer", bundle: Bundle.moduleOrMain) }
    public var background: Color { Color("Background", bundle: Bundle.moduleOrMain) }
    public var surface: Color { Color("Surface", bundle: Bundle.moduleOrMain) }
    public var error: Color { Color("Error", bundle: Bundle.moduleOrMain) }
    public var textPrimary: Color { Color("TextPrimary", bundle: Bundle.moduleOrMain) }
    public var textSecondary: Color { Color("TextSecondary", bundle: Bundle.moduleOrMain) }
    public var accent: Color { Color("Accent", bundle: Bundle.moduleOrMain) }
}

// Bundle helper: use Bundle.module for SPM, fallback to main for in-repo copy
fileprivate extension Bundle {
    static var moduleOrMain: Bundle {
        #if SWIFT_PACKAGE
        return Bundle.module
        #else
        return .main
        #endif
    }
}
