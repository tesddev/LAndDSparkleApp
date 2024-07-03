//
//  LAndDSparkleAppTests.swift
//  LAndDSparkleAppTests
//
//  Created by Tes on 03/07/2024.
//

import XCTest
import SwiftUI
import UIKit
@testable import LAndDSparkleApp

class CustomUIKitViewTests: XCTestCase {
    
    func testCustomUIKitViewInitialization() {
        // Given
        let frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        
        // When
        let customView = CustomUIKitView(frame: frame)
        
        // Then
        XCTAssertEqual(customView.backgroundColor, UIColor(hexString: "#0f67B1").withAlphaComponent(0.8))
        XCTAssertEqual(customView.layer.cornerRadius, 10)
        XCTAssertTrue(customView.layer.masksToBounds)
    }
}
