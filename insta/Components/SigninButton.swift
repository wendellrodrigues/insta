//
//  SigninButton.swift
//  Instagram
//
//  Created by DavidTran on 10/26/19.
//  Copyright © 2019 zero2launch. All rights reserved.
//

import Foundation
import SwiftUI
struct SigninButton: View {
    var action: () -> Void
    var label: String
    var body: some View {
        Button(action: action) {
            HStack {
                Spacer()
                Text(label).fontWeight(.bold).foregroundColor(Color.white)
                Spacer()
            }
            
        }.modifier(SigninButtonModifier())
    }
}
