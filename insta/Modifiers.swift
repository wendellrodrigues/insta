//
//  Modifiers.swift
//  Instagram
//
//  Created by DavidTran on 10/26/19.
//  Copyright © 2019 zero2launch. All rights reserved.
//

import SwiftUI

struct TextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content.padding()
            .border(COLOR_LIGHT_GRAY, width: 1)
            .padding([.top, .leading, .trailing])
    }
}

struct SigninButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content.padding().background(Color.black).cornerRadius(5).shadow(radius: 10, x: 0, y: 10).padding()
    }
}

