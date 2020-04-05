//
//  CircleImage.swift
//  Landmarks
//
//  Created by Carlistle ZHENG on 3/11/20.
//  Copyright © 2020 Carlistle ZHENG. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
