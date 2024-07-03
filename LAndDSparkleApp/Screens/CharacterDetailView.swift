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
            AsyncImage(url: URL(string: character.image ?? "url")) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 300)
                    .cornerRadius(20)
            } placeholder: {
                ProgressView()
            }
            .frame(width: 100, height: 100)
            Spacer()
                .frame(height: 150)
            ZStack {
                CustomUIKitViewRepresentable()
                    .frame(height: 150)
                VStack {
                    Text("Name: \(character.name ?? "Tes")").font(.largeTitle).foregroundColor(.white)
                    Text("Status: \(character.status ?? "Tes")").foregroundColor(.white)
                    Text("Species: \(character.species ?? "Human")").foregroundColor(.white)
                }
            }
        }
        .padding()
        .navigationBarTitle(Text(character.name ?? ""), displayMode: .inline)
    }
}

#Preview {
    CharacterDetailView(character: CharacterDetails.empty)
}
