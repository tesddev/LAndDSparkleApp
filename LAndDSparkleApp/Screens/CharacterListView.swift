//
//  CharacterView.swift
//  LAndDSparkleApp
//
//  Created by Tes on 02/07/2024.
//

import SwiftUI

struct CharacterListView: View {
    @ObservedObject var networkManager = NetworkManager()

    var body: some View {
        NavigationView {
            List(networkManager.characters) { character in
                NavigationLink(destination: CharacterDetailView(character: character)) {
                    Text(character.name ?? "Tes")
                }
            }
            .navigationBarTitle("Characters")
        }
        .onAppear {
            self.networkManager.fetchCharacters()
        }
    }
}

#Preview {
    CharacterListView()
}

