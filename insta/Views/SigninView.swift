//
//  ContentView.swift
//  Instagram
//
//  Created by DavidTran on 10/24/19.
//  Copyright © 2019 zero2launch. All rights reserved.
//

import SwiftUI

struct SigninView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
               Spacer()
               HeaderView()
               Spacer()
               Divider()
               EmailTextField(email: $email)
               PasswordTextField(password: $password)
               SigninButton(action: {}, label: TEXT_SIGN_IN)
               Divider()
                NavigationLink(destination: SignupView()) {
                 SignupText()
                }
            }
        }.accentColor(Color.black)
   
       
    }
}

struct SigninView_Previews: PreviewProvider {
    static var previews: some View {
        SigninView()
    }
}

