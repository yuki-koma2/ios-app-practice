//
// Created by Yuki Komatsu on 2020/05/06.
// Copyright (c) 2020 ___YUKIKOMA___. All rights reserved.
//

import SwiftUI

struct TodoList: View {
    @EnvironmentObject var userData: UserData
    var newItemTitle = "new Item. Tap to Edit"

    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $userData.isCompletedOnly) {
                    Text("Completed only")
                }
                ForEach(self.userData.todos) { todo in
                    if todo.title == self.newItemTitle {
                        NavigationLink(destination: TodoEditPage(todo: todo)) {
                            TodoRow(todo: todo)
                        }
                    } else {
                        NavigationLink(destination: TodoDetail(todo: todo)) {
                            TodoRow(todo: todo)
                        }
                    }
                }
                Button("+ Add Item", action: {
                    self.userData.todos.append(
                            TodoItem.init(
                                    id: self.userData.todos.count,
                                    title: self.newItemTitle,
                                    detail: "detail",
                                    endDate: Date(),
                                    isCompleted: false
                            ))
                })
            }
                    .navigationBarTitle(Text("TodoLists"))
        }
    }
}

