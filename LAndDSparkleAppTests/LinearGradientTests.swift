//
//  LinearGradientTests.swift
//  LAndDSparkleAppTests
//
//  Created by GIGL-MAC on 03/07/2024.
//

import SwiftUI
import XCTest
import ViewInspector
@testable import LAndDSparkleApp

extension LinearGradient: Inspectable {}

final class LinearGradientTests: XCTestCase {
    func testLinearGradient() throws {
        // Given
        let gradient = LinearGradient(
            gradient: Gradient(colors: [.gray.opacity(0.5), .blue]),
            startPoint: .top,
            endPoint: .bottom
        )
        
        // When
        let inspectedGradient = try gradient.inspect()
        let linearGradient = try inspectedGradient.linearGradient()
        
        // Then
        XCTAssertTrue(compareUnitPoints(try linearGradient.startPoint(), .top))
        XCTAssertTrue(compareUnitPoints(try linearGradient.endPoint(), .bottom))
        
        // Check the colors by inspecting the gradient stops
        let gradientStops = try linearGradient.gradient().stops
        XCTAssertEqual(gradientStops.count, 2)
        XCTAssertEqual(gradientStops[0].color, Color.gray.opacity(0.5))
        XCTAssertEqual(gradientStops[1].color, Color.blue)
    }
    
    private func compareUnitPoints(_ lhs: UnitPoint, _ rhs: UnitPoint) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
}


