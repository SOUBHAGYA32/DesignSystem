//
//  DesignSystemTests.swift
//  DesignSystem
//
//  Created by Soubhagya on 30/10/25.
//

import XCTest
@testable import DesignSystem

final class DesignSystemTests: XCTestCase {
    func test_basicDesignSystemAccess_compilesAndReturnsValues() throws {
        // Instantiate the default design system and touch a couple of tokens to ensure compilation.
        let ds = DefaultDesignSystem()
        _ = ds.colors.primary
        _ = ds.colors.background
        _ = ds.typography.body

        // This test doesn't assert specific color values (assets are in resources),
        // it ensures the package compiles and the API is accessible.
        XCTAssertTrue(true)
    }
}
