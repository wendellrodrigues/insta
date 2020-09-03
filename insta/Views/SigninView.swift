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
    
    @ObservedObject var signinViewModel = SigninViewModel()
    
    
    
    func signIn() {
        
        signinViewModel.signin(email: signinViewModel.email, password: signinViewModel.password, completed: { (user) in
            
            print(user.email)
            self.clean()
            
        }, onError: { (errorMessage) in
            print("Error: \(errorMessage)")
            self.signinViewModel.showAlert = true
            self.signinViewModel.errorString = errorMessage
            self.clean()
        })
        
    }
    
    func clean() {

        self.signinViewModel.email = ""
        self.signinViewModel.password = ""
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                HeaderView()
                Spacer()
                Divider()
                EmailTextField(email: $signinViewModel.email)
                PasswordTextField(password: $signinViewModel.password)
                SigninButton(action: signIn, label: TEXT_SIGN_IN)
                    .alert(isPresented: $signinViewModel.showAlert) {
                        Alert(title: Text("Error"), message: Text(self.signinViewModel.errorString), dismissButton: .default(Text("OK")))
                }
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


