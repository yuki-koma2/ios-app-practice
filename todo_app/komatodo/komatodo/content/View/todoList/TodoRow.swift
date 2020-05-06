//
//  TodoRow.swift
//  komatodo
//
//  Created by Yuki Komatsu on 2020/05/06.
//  Copyright © 2020 ___YUKIKOMA___. All rights reserved.
//

import SwiftUI

struct TodoRow: View {
    var todo: TodoItem

    var body: some View {
        VStack {
            Text(todo.title)
        }
    }
}