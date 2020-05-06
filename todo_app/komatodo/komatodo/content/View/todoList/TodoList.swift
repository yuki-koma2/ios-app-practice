//
// Created by Yuki Komatsu on 2020/05/06.
// Copyright (c) 2020 ___YUKIKOMA___. All rights reserved.
//

import SwiftUI

struct TodoList: View {
    @EnvironmentObject var userData: UserData

    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $userData.isCompletedOnly) {
                    Text("Completed only")
                }
                ForEach(self.userData.todos) { todo in
                    TodoRow(todo: todo)
                }
                Button("+ Add Item", action: {
                    self.userData.todos.append(
                            TodoItem.init(
                                    id: self.userData.todos.count,
                                    title: "new Item. Tap to Edit",
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

