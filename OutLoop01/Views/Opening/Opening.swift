//
//  LoginView.swift
//  OutLoop01
//
//  Created by 何徐宸 on 7/21/22.
//

import SwiftUI

struct OpeningView: View {
    @State private var isShow = false
    var body: some View {
        NavigationView{
        VStack{
            Image("Icon")
            .resizable()
            .frame(width:200,height: 200)
            Spacer().frame(height: 20)
            HStack{
        Text("It's time to get")
            .font(myContent)
            .foregroundColor(myPink)
        Text("OutLoop")
            .font(myContent)
            .foregroundColor(myRed)
        }//"It's time to get OutLoop"
            Spacer()
                .frame(height:80)
            Text("Already have an account?")
                .font(mySubContent)
                .foregroundColor(myPink)
            
            NavigationLink(destination:LoginView().navigationBarHidden(true))
            {

                ZStack{
                    LargeButton(color: myRed)
                    Text("Login")
                        .foregroundColor(Color.white)
                        .font(myContent)
                        
                }
                //.shadow(color: .gray.opacity(0.5), radius: 1, x: 1, y: 1)
            }

            Spacer()
                .frame(height:20)
            Text("New here?")
                .font(mySubContent)
                .foregroundColor(myPink)
            
            NavigationLink(destination:RegisterView().navigationBarHidden(true))
            {

                ZStack{
                
                    HollowLargeButton(color: myPink)
                    Text("Register")
                        .foregroundColor(myPink)
                        .font(myContent)
                }
            }
        }
    }
    }
}

struct OpeningView_Previews: PreviewProvider {
    static var previews: some View {
     OpeningView()
    }
}
