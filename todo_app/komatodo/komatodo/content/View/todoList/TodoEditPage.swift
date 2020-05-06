//
// Created by Yuki Komatsu on 2020/05/06.
// Copyright (c) 2020 ___YUKIKOMA___. All rights reserved.
//

import SwiftUI

struct TodoEditPage: View {
    @EnvironmentObject var userData: UserData
    @State private var input = ""
    @State private var onFocus = false
    var todo: TodoItem
    var todoIndex: Int {
        userData.todos.firstIndex(where: { $0.id == todo.id })!
    }

    var body: some View {

        HStack {
            // 絶対に間違っている気がする
            TextField(self.todo.title, text: $input,
                    onEditingChanged: { begin in
                        if begin {
                            self.onFocus = true
                        } else {
                            self.onFocus = false
                        }
                    },
                    onCommit: {self.userData.todos[self.todoIndex].setTitle(title: self.input)}
            )
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .shadow(color: onFocus ? .blue : .clear, radius: 3)
        }
//        Text(todo.endDate)
//        Text(todo.isCompleted)
    }
}

