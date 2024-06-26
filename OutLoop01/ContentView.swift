//
//  ContentView.swift
//  OutLoop01
//
//  Created by 何徐宸 on 7/18/22.
//

import SwiftUI
import FirebaseCore


struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModel
     
    var body: some View
    {    
        Generation()
        //HomepageView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
