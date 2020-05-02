//
//  CircleImage.swift
//  Landmarks
//
//  Created by Yuki Komatsu on 2020/05/02.
//  Copyright © 2020 ___YUKIKOMA___. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white,lineWidth: 5))
        .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
