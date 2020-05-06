//
// Created by Yuki Komatsu on 2020/05/06.
// Copyright (c) 2020 ___YUKIKOMA___. All rights reserved.
//

import SwiftUI

struct TodoItem: Identifiable, Hashable, Codable {
    var id: Int
    var title: String
    var detail: String
    var endDate: Date
    var isCompleted: Bool

    // これどうすればつかえるんだ
    enum TODO_TYPE: String, CaseIterable, Codable, Hashable {
        case IMPORTANT = "Important"
        case TASK = "Task"
        case MEMO = "memo"
    }

    init(id: Int, title: String, detail: String, endDate: Date, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.detail = detail
        self.endDate = endDate
        self.isCompleted = isCompleted
    }

    mutating func update(title: String, detail: String, endDate: Date, isCompleted: Bool) {
        self.title = title
        self.detail = detail
        self.endDate = endDate
        self.isCompleted = isCompleted
    }

    mutating func changeComplete(isCompleted: Bool) {
        self.isCompleted = isCompleted
    }

    mutating func setTitle(title: String) {
        self.title = title
    }
}