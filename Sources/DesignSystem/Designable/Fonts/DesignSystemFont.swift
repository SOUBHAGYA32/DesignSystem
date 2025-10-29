//
//  DesignSystemFont.swift
//  DesignSystem
//
//  Created by Soubhagya on 30/10/25.
//

import Foundation

#if canImport(UIKit)
import UIKit
/// Cross-platform font alias for iOS, tvOS, watchOS
public typealias DesignSystemFont = UIFont
#elseif canImport(AppKit)
import AppKit
/// Cross-platform font alias for macOS
public typealias DSFont = NSFont
#endif

