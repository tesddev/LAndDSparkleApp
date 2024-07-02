//
//  Character.swift
//  LAndDSparkleApp
//
//  Created by Tes on 02/07/2024.
//

import Foundation

// MARK: - Character
struct Character: Codable, Identifiable {
    var id: Int?
    let results: [Result]?
}

// MARK: - Result
struct Result: Codable, Identifiable {
    let id: Int?
    let name, status, species, gender: String?
    let image: String?
    static let empty = Result(id: 0, name: "Tes", status: "Popular", species: "Humans", gender: "Male", image: "https://avatars.githubusercontent.com/u/58847828?v=4")
}

