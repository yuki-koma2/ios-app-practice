//
// Created by Yuki Komatsu on 2020/05/06.
// Copyright (c) 2020 ___YUKIKOMA___. All rights reserved.
//


//ref : https://pokeapi.co/

//count:964
//next:"https://pokeapi.co/api/v2/pokemon?offset=5&limit=5"
//previous:null
//name:"bulbasaur"
//url:"https://pokeapi.co/api/v2/pokemon/1/"
//name:"ivysaur"
//url:"https://pokeapi.co/api/v2/pokemon/2/"
//name:"venusaur"
//url:"https://pokeapi.co/api/v2/pokemon/3/"
//name:"charmander"
//url:"https://pokeapi.co/api/v2/pokemon/4/"
//name:"charmeleon"
//url:"https://pokeapi.co/api/v2/pokemon/5/"

import Foundation

struct PokemonAPIList:Decodable{
    var results:[PokemonListEntry]
}

struct PokemonListEntry:Decodable{
    var name:String
    var url:String

    init(name: String, url: String) {
        self.name = name
        self.url = url
    }
}