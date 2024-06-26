//
//  OutLoop01App.swift
//  OutLoop01
//
//  Created by 何徐宸 on 7/18/22.
//

import SwiftUI
import FirebaseAuth
import FirebaseCore
import FirebaseFirestore
//import SmartlookAnalytics

@main
struct OutLoop01App: App {
    @StateObject var viewModel = AuthViewModel()//initialized here
    /*@StateObject var smartlook = Smartlook.instance
           .preferences(
               Preferences(projectKey: "e07b6dc11187978c95858e5a8816a55c16cf97c7")
           )
           .start()
    */
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ContentView()
            }.environmentObject(viewModel)
        }
    }
}
