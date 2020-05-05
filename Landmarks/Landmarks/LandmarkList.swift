//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Yuki Komatsu on 2020/05/05.
//  Copyright © 2020 ___YUKIKOMA___. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
        List(landmarkData) { landmark in
             NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                   LandmarkRow(landmark: landmark)
               }
            }
            .navigationBarTitle(Text("Landmarks"))
        
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
//        LandmarkList()
//            .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
        // todo: koma うまくいかない。なぜだ。
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
