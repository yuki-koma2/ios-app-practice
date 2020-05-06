//
// Created by Yuki Komatsu on 2020/05/06.
// Copyright (c) 2020 ___YUKIKOMA___. All rights reserved.
//

import SwiftUI

struct CheckButton: View {
    let isCompleted: Bool
    let action: () -> Void

    var body: some View {
        Button(action: self.action, label: {
            ZStack {
                Circle()
                        .stroke(isCompleted ? Color.green : Color.gray, lineWidth: 1.5)
                        .frame(width: 20, height: 20)
                Group {
                    if isCompleted {
                        Circle()
                                .fill(Color.green)
                                .frame(width: 12.5, height: 12.5)
                    }
                }
            }
                    .padding()
        })
    }
}
