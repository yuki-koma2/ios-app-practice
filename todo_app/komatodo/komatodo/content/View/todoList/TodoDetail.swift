//
//  TodoDetail.swift
//  komatodo
//
//  Created by Yuki Komatsu on 2020/05/06.
//  Copyright © 2020 ___YUKIKOMA___. All rights reserved.
//

import SwiftUI

struct TodoDetail: View {
    @EnvironmentObject var userData: UserData
    @State private var input = ""
    @State private var onFocus = false
    @State var todo: TodoItem
    var todoIndex: Int {
        userData.todos.firstIndex(where: { $0.id == todo.id })!
    }
    static let taskDateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }()

    var body: some View {

        HStack {
            VStack {
                // isCompleteがうまく機能しない
                CheckButton(isCompleted: self.todo.isCompleted, action: {
                    self.todo.changeComplete(isCompleted: !self.todo.isCompleted)
                })
                Text(todo.title).font(.largeTitle)
            }
            VStack {
                Text(todo.detail).frame(height: 20, alignment: .trailing)
            }
            VStack {
                Text("Task due date: \(todo.endDate, formatter: Self.taskDateFormat)")
            }
        }


    }
}
