//
//  NetworkManager.swift
//  LAndDSparkleApp
//
//  Created by Tes on 02/07/2024.
//

import Foundation

class NetworkManager: ObservableObject {
    @Published var characters: [CharacterDetails] = []

    func fetchCharacters() {
        guard let url = URL(string: "https://rickandmortyapi.com/api/character") else { return }
        print("fetching characters....")

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                print("yes data ... \(data)")
                let decodedResponse = try? JSONDecoder().decode(Character.self, from: data)
                DispatchQueue.main.async {
                    self.characters = decodedResponse?.results ?? []
                    print("see assigned characters \(self.characters)")
                }
            } else {
                print("no data ...")
            }
        }.resume()
    }
}
