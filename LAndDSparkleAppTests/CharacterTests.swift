//
//  NetworkManagerTest.swift
//  LAndDSparkleAppTests
//
//  Created by Tes on 04/07/2024.
//

import Foundation
import XCTest
@testable import LAndDSparkleApp

// Unit Test Class
class CharacterTests: XCTestCase {

    func testCharacterDetailsDecoding() {
        // JSON Data for testing
        let jsonData = """
        {
            "id": 1,
            "results": [
                {
                    "id": 1,
                    "name": "Rick Sanchez",
                    "status": "Alive",
                    "species": "Human",
                    "gender": "Male",
                    "image": "https://example.com/rick.png"
                }
            ]
        }
        """.data(using: .utf8)!

        // Decode JSON data to Character object
        let decoder = JSONDecoder()
        do {
            let character = try decoder.decode(Character.self, from: jsonData)
            
            // Verify Character object
            XCTAssertEqual(character.id, 1)
            XCTAssertNotNil(character.results)
            XCTAssertEqual(character.results?.count, 1)
            
            // Verify CharacterDetails object
            if let details = character.results?.first {
                XCTAssertEqual(details.id, 1)
                XCTAssertEqual(details.name, "Rick Sanchez")
                XCTAssertEqual(details.status, "Alive")
                XCTAssertEqual(details.species, "Human")
                XCTAssertEqual(details.gender, "Male")
                XCTAssertEqual(details.image, "https://example.com/rick.png")
            } else {
                XCTFail("Character details should not be nil")
            }
        } catch {
            XCTFail("Decoding failed with error: \(error)")
        }
    }
}
