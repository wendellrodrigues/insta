//
//  EmailTextField.swift
//  Instagram
//
//  Created by DavidTran on 10/26/19.
//  Copyright © 2019 zero2launch. All rights reserved.
//

import SwiftUI

struct EmailTextField: View {
    
    @Binding var email: String
    
    var body: some View {
        HStack {
            Image(systemName: "envelope.fill").foregroundColor(Color(red: 0, green: 0, blue: 0, opacity: 0.3))
            TextField(TEXT_EMAIL, text: $email)
        }.modifier(TextFieldModifier())
    }
}
