//
//  DesignSystemScaledFont.swift
//  DesignSystem
//
//  Created by Soubhagya on 30/10/25.
//

import Foundation
import SwiftUI

public final class DesignSystemScaledFont {
  private struct FontDescription: Decodable {
      let fontSize: CGFloat
      let fontName: String
  }

  private typealias DSStyleDictionary = [String: FontDescription]
  private var styleDictionary: DSStyleDictionary?

  public init(fontName: String) {
      if let url = Bundle(for: DesignSystemScaledFont.self).url(forResource: fontName, withExtension: "plist"),
         let data = try? Data(contentsOf: url) {
          let decoder = PropertyListDecoder()
          styleDictionary = try? decoder.decode(DSStyleDictionary.self, from: data)
      }
  }

  public func font(forTextStyle textStyle: DesignSystemFont.TextStyle) -> DesignSystemFont {
      guard let fontDescription = styleDictionary?[textStyle.rawValue] else {
          return defaultFont(for: textStyle)
      }

      guard let font = DesignSystemFont(name: fontDescription.fontName, size: fontDescription.fontSize) else {
          return defaultFont(for: textStyle)
      }

      #if canImport(UIKit)
      let fontMetrics = UIFontMetrics(forTextStyle: textStyle)
      return fontMetrics.scaledFont(for: font)
      #elseif canImport(AppKit)
      return font // macOS does not have `UIFontMetrics`
      #endif
  }

  private func defaultFont(for textStyle: DesignSystemFont.TextStyle) -> DesignSystemFont {
      #if canImport(UIKit)
      return DesignSystemFont.preferredFont(forTextStyle: textStyle)
      #elseif canImport(AppKit)
      switch textStyle {
      case .title1: return DesignSystemFont.systemFont(ofSize: 28, weight: .bold)
      case .title2: return DesignSystemFont.systemFont(ofSize: 22, weight: .semibold)
      case .title3: return DesignSystemFont.systemFont(ofSize: 20, weight: .regular)
      case .headline: return DesignSystemFont.systemFont(ofSize: 17, weight: .semibold)
      case .subheadline: return DesignSystemFont.systemFont(ofSize: 15, weight: .regular)
      case .body: return DesignSystemFont.systemFont(ofSize: 17, weight: .regular)
      case .callout: return DesignSystemFont.systemFont(ofSize: 16, weight: .regular)
      case .caption1: return DesignSystemFont.systemFont(ofSize: 12, weight: .regular)
      case .caption2: return DesignSystemFont.systemFont(ofSize: 11, weight: .regular)
      case .footnote: return DesignSystemFont.systemFont(ofSize: 13, weight: .regular)
      default: return DesignSystemFont.systemFont(ofSize: 17, weight: .regular)
      }
      #endif
  }
}
