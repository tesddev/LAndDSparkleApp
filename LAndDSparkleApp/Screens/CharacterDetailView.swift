//
//  CharacterDetailView.swift
//  LAndDSparkleApp
//
//  Created by Tes on 02/07/2024.
//

import SwiftUI
import ImageShadowPackage

struct CharacterDetailView: View {
    let character: CharacterDetails
    let url = URL(string: "fb.com")

    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.gray.opacity(0.5), .blue, ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .edgesIgnoringSafeArea(.all)
            VStack {
                if let url = URL(string: character.image ?? "url") {
                    ShadowURLImage(url: url, shadowColor: .red, radius: 55, x: 12, y: 12)
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300, height: 300)
                }
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
        }
        .navigationBarTitle(Text(character.name ?? ""), displayMode: .inline)
    }
}

#Preview {
    CharacterDetailView(character: CharacterDetails.empty)
}
