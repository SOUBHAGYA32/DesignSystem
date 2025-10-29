//
//  DSVerdanaFont.swift
//  DesignSystem
//
//  Created by Soubhagya on 30/10/25.
//

import SwiftUI

#if canImport(UIKit)
import UIKit
#elseif canImport(AppKit)
import AppKit
#endif

public class DSVerdanaFont {

    // MARK: - UIKit/AppKit Fonts (for backward compatibility)
    
    #if canImport(UIKit)
    public var body: UIFont {
        return regularFont(size: 17.0)
    }

    public var callout: UIFont {
        return regularFont(size: 16.0)
    }

    public var caption1: UIFont {
        return regularFont(size: 12.0)
    }

    public var caption2: UIFont {
        return regularFont(size: 11.0)
    }

    public var footnote: UIFont {
        return regularFont(size: 13.0)
    }

    public var headline: UIFont {
        return boldFont(size: 17.0)
    }

    public var subheadline: UIFont {
        return regularFont(size: 15.0)
    }

    public var largeTitle: UIFont {
        return regularFont(size: 34.0)
    }

    public var title1: UIFont {
        return regularFont(size: 28.0)
    }

    public var title2: UIFont {
        return regularFont(size: 22.0)
    }

    public var title3: UIFont {
        return regularFont(size: 20.0)
    }
    #elseif canImport(AppKit)
    public var body: NSFont {
        return regularFont(size: 17.0)
    }

    public var callout: NSFont {
        return regularFont(size: 16.0)
    }

    public var caption1: NSFont {
        return regularFont(size: 12.0)
    }

    public var caption2: NSFont {
        return regularFont(size: 11.0)
    }

    public var footnote: NSFont {
        return regularFont(size: 13.0)
    }

    public var headline: NSFont {
        return boldFont(size: 17.0)
    }

    public var subheadline: NSFont {
        return regularFont(size: 15.0)
    }

    public var largeTitle: NSFont {
        return regularFont(size: 34.0)
    }

    public var title1: NSFont {
        return regularFont(size: 28.0)
    }

    public var title2: NSFont {
        return regularFont(size: 22.0)
    }

    public var title3: NSFont {
        return regularFont(size: 20.0)
    }
    #endif

    public init() {}

    // MARK: - SwiftUI Fonts
    
    /// SwiftUI Font properties for Verdana font family
    public var swiftUIBody: Font {
        return Font.custom("Verdana", size: 17, relativeTo: .body)
    }
    
    public var swiftUICallout: Font {
        return Font.custom("Verdana", size: 16, relativeTo: .callout)
    }
    
    public var swiftUICaption1: Font {
        return Font.custom("Verdana", size: 12, relativeTo: .caption)
    }
    
    public var swiftUICaption2: Font {
        return Font.custom("Verdana", size: 11, relativeTo: .caption2)
    }
    
    public var swiftUIFootnote: Font {
        return Font.custom("Verdana", size: 13, relativeTo: .footnote)
    }
    
    public var swiftUIHeadline: Font {
        return Font.custom("Verdana-Bold", size: 17, relativeTo: .headline)
    }
    
    public var swiftUISubheadline: Font {
        return Font.custom("Verdana", size: 15, relativeTo: .subheadline)
    }
    
    public var swiftUILargeTitle: Font {
        return Font.custom("Verdana", size: 34, relativeTo: .largeTitle)
    }
    
    public var swiftUITitle1: Font {
        return Font.custom("Verdana", size: 28, relativeTo: .title)
    }
    
    public var swiftUITitle2: Font {
        return Font.custom("Verdana", size: 22, relativeTo: .title2)
    }
    
    public var swiftUITitle3: Font {
        return Font.custom("Verdana", size: 20, relativeTo: .title3)
    }
    
    // MARK: - SwiftUI Font Weight Variations
    
    /// Bold font variants for SwiftUI
    public var swiftUIBodyBold: Font {
        return Font.custom("Verdana-Bold", size: 17, relativeTo: .body)
    }
    
    public var swiftUICalloutBold: Font {
        return Font.custom("Verdana-Bold", size: 16, relativeTo: .callout)
    }
    
    public var swiftUISubheadlineBold: Font {
        return Font.custom("Verdana-Bold", size: 15, relativeTo: .subheadline)
    }
    
    /// Italic font variants for SwiftUI
    public var swiftUIBodyItalic: Font {
        return Font.custom("Verdana-Italic", size: 17, relativeTo: .body)
    }
    
    public var swiftUICalloutItalic: Font {
        return Font.custom("Verdana-Italic", size: 16, relativeTo: .callout)
    }
    
    /// Custom font method for SwiftUI with specific size and weight
    public func swiftUICustom(size: CGFloat, weight: Font.Weight = .regular, relativeTo textStyle: Font.TextStyle = .body) -> Font {
        let fontName: String
        switch weight {
        case .bold, .heavy, .black:
            fontName = "Verdana-Bold"
        case .light, .ultraLight, .thin:
            fontName = "Verdana"
        default:
            fontName = "Verdana"
        }
        return Font.custom(fontName, size: size, relativeTo: textStyle)
    }

    // MARK: - Private Helpers

    #if canImport(UIKit)
    private func regularFont(size: CGFloat) -> UIFont {
        return scaledFont(for: "Verdana", textStyle: .body, defaultSize: size)
    }

    private func boldFont(size: CGFloat) -> UIFont {
        return scaledFont(for: "Verdana-Bold", textStyle: .body, defaultSize: size)
    }

    private func scaledFont(for fontName: String, textStyle: UIFont.TextStyle, defaultSize: CGFloat) -> UIFont {
        let font = UIFont(name: fontName, size: defaultSize) ?? UIFont(name: "Georgia", size: defaultSize) ?? UIFont.systemFont(ofSize: defaultSize)
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
    }
    
    #elseif canImport(AppKit)
    private func regularFont(size: CGFloat) -> NSFont {
        return scaledFont(for: "Verdana", textStyle: .body, defaultSize: size)
    }

    private func boldFont(size: CGFloat) -> NSFont {
        return scaledFont(for: "Verdana-Bold", textStyle: .body, defaultSize: size)
    }

    private func scaledFont(for fontName: String, textStyle: NSFont.TextStyle, defaultSize: CGFloat) -> NSFont {
        let font = NSFont(name: fontName, size: defaultSize) ?? NSFont(name: "Georgia", size: defaultSize) ?? NSFont.systemFont(ofSize: defaultSize)
        return font // macOS does not support UIFontMetrics scaling
    }
    #endif
}
