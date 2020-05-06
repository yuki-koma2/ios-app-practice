//
// Created by Yuki Komatsu on 2020/05/06.
// Copyright (c) 2020 ___YUKIKOMA___. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class NetworkingManager: ObservableObject {
    @Published var pokemonList: PokemonAPIList = PokemonAPIList(results: [PokemonListEntry.init(name: "", url: "")])

    init(pokemonList: PokemonAPIList) {
        self.pokemonList = pokemonList
    }

    init() {
        //URL()はOptionalがかえる
//        guard
        let url = URL(string: "https://pokeapi.co/api/v2/pokemon?limit=151")!
//        else {
//            return
//        }
        //'self' captured by a closure before all members were initialized
        //とか言われる。先に宣言しないとだめっぽい
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            guard let data = data else {
                return
            }
            let pokemonListResult = try! JSONDecoder().decode(PokemonAPIList.self, from: data)
            DispatchQueue.main.async {
                self.pokemonList = pokemonListResult
            }
        }.resume()
    }
}