//
//  AuthView.swift
//  OutLoop01
//
//  Created by 何徐宸 on 7/25/22.
//

import SwiftUI
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth
import FirebaseAnalytics

class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    
    init()
    {
        self.userSession = Auth.auth().currentUser
        print("Debug: User session is \(String(describing: self.userSession))")
    }
    func login(withEmail email: String,password: String){
        print("Debug: Login with email \(email)")
    }
    func register(withEmail email:String,password:String){
        Auth.auth().createUser(withEmail: email, password: password){
            result, error in
            if let error = error //if error exists
            {
                print("Debug: Register Error\(error.localizedDescription)")
                return
            }
            guard let user = result?.user else { return }
            self.userSession = user
            print("Debug:Register successfully")
            print("Debug:User is \(String(describing: self.userSession))")
            
            let data = ["email":email,
                        "uid":user.uid]
            Firestore.firestore().collection("users")
                .document(user.uid)
                .setData(data){
                    _ in
                    print("Debug:Did uploda user data")
                }
        }
    }
    func signOut(){
        //in the guest end make it log out
        userSession = nil //set the navigation to the original state
        
        //in the backend make the user signed out
        try?Auth.auth().signOut()
        
        
    }
     
}
