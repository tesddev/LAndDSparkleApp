//
//  LAndDSparkleAppTests.swift
//  LAndDSparkleAppTests
//
//  Created by GIGL-MAC on 03/07/2024.
//

import XCTest
@testable import LAndDSparkleApp

final class LAndDSparkleAppTests: XCTestCase {
    func testCharacterModel() {
        let character = Character(id: 1, results: <#[CharacterDetails]?#>, name: "Rick", status: "Alive", species: "Human", image: URL(string: "https://rickandmortyapi.com/api/character/avatar/1.jpeg")!)
        XCTAssertEqual(character.name, "Rick")
    }
    
}
