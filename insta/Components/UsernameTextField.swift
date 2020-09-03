//
//  UsernameTextField.swift
//  Instagram
//
//  Created by DavidTran on 10/26/19.
//  Copyright © 2019 zero2launch. All rights reserved.
//

import SwiftUI

struct UsernameTextField: View {
      @Binding var username: String
     
     var body: some View {
         HStack {
             Image(systemName: "person.fill").foregroundColor(Color(red: 0, green: 0, blue: 0, opacity: 0.3))
             TextField(TEXT_USERNAME, text: $username)
         }.modifier(TextFieldModifier())
     }
}


struct UsernameTextField_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
