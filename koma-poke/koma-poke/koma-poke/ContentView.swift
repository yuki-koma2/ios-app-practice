//
//  ContentView.swift
//  koma-poke
//
//  Created by Yuki Komatsu on 2020/05/06.
//  Copyright © 2020 ___YUKIKOMA___. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var networkingManager=NetworkingManager()
    var body: some View {
        List(networkingManager.pokemonList.results,id:\.url){pokemon in
            Text(pokemon.name).font(.title)
            Image(pokemon.url)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
