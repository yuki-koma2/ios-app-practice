//
//  ContentView.swift
//  komatodo
//
//  Created by Yuki Komatsu on 2020/05/06.
//  Copyright © 2020 ___YUKIKOMA___. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Text("Hello, World!")
    TodoList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
                .environmentObject(UserData())
    }
}
