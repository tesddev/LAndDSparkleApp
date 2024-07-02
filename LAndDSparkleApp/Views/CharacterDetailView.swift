//
//  CharacterDetailView.swift
//  LAndDSparkleApp
//
//  Created by Tes on 02/07/2024.
//

import SwiftUI

struct CharacterDetailView: View {
    let character: CharacterDetails
    let url = URL(string: "fb.com")

    var body: some View {
        VStack {
            AsyncImage(url: URL(string: character.image ?? "url"))
            Text("Name: \(character.name ?? "Tes")").font(.largeTitle)
            Text("Status: \(character.status ?? "Tes")")
            Text("Species: \(character.species ?? "Human")")
        }
        .navigationBarTitle(Text(character.name ?? ""), displayMode: .inline)
    }
}

#Preview {
    CharacterDetailView(character: CharacterDetails.empty)
}
