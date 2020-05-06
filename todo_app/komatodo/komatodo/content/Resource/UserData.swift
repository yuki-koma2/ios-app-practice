//  Created by Yuki Komatsu on 2020/05/06.
//  Copyright © 2020 ___YUKIKOMA___. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var isCompletedOnly = false
    @Published var todos : Array<TodoItem> = []
}

