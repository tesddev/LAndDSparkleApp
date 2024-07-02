//
//  Character.swift
//  LAndDSparkleApp
//
//  Created by Tes on 02/07/2024.
//

import Foundation

//struct Character: Codable, Identifiable {
//    let id: Int?
//    let name: String?
//    let status: String?
//    let species: String?
//    let image: URL?
//    static let empty = Character(id: 0, name: "Tes", status: "Popular", species: "Human", image: URL(string: "https://avatars.githubusercontent.com/u/58847828?v=4"))
//}

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

