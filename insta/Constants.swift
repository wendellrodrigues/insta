//
//  Constants.swift
//  Instagram
//
//  Created by DavidTran on 10/26/19.
//  Copyright © 2019 zero2launch. All rights reserved.
//

import SwiftUI
import Firebase
import FirebaseStorage

let COLOR_LIGHT_GRAY = Color(red: 0, green: 0, blue: 0, opacity: 0.15)



// Sign in and Sign up pages
let TEXT_NEED_AN_ACCOUNT = "Don't have an account?"
let TEXT_SIGN_UP = "Sign up"
let TEXT_SIGN_IN = "Sign in"
let TEXT_EMAIL = "Email"
let TEXT_USERNAME = "Username"
let TEXT_PASSWORD = "Password"
let TEXT_SIGNIN_HEADLINE = "Photo Sharing"
let TEXT_SIGNIN_SUBHEADLINE = "The essiest way to share photos with family and friends"
let TEXT_SIGNUP_NOTE = "An account will allow you to save and access photo information across devices. You can delete your account at any time and your information will not be shared."
let TEXT_SIGNUP_PASSWORD_REQUIRED = "At least 8 characters required"


let IMAGE_LOGO = "logo"
let IMAGE_USER_PLACEHOLDER = "user-placeholder"

class Ref {
    // Storage
    static var STORAGE_ROOT = Storage.storage().reference(forURL: "gs://swiftui-insta-baf51.appspot.com")
    static var STORAGE_AVATAR = STORAGE_ROOT.child("avatar")
    static func STORAGE_AVATAR_USERID(userId: String) -> StorageReference {
        return STORAGE_AVATAR.child(userId)
    }
    
    // Firestore
    static var FIRESTORE_ROOT = Firestore.firestore()
    static var FIRESTORE_COLLECTION_USERS = FIRESTORE_ROOT.collection("users")
    static func FIRESTORE_DOCUMENT_USERID(userId: String) -> DocumentReference {
        return FIRESTORE_COLLECTION_USERS.document(userId)
    }
}
