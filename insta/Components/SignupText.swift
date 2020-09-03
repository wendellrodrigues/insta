//
//  SignupView.swift
//  Instagram
//
//  Created by DavidTran on 10/26/19.
//  Copyright © 2019 zero2launch. All rights reserved.
//

import SwiftUI


struct SignupText: View {
    var body: some View {
        HStack {
            Text(TEXT_NEED_AN_ACCOUNT).font(.footnote).foregroundColor(.gray)
            Text(TEXT_SIGN_UP).foregroundColor(.black)
        }
    }
}
