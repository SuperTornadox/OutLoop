//
//  Email.swift
//  OutLoop01
//
//  Created by 何徐宸 on 7/22/22.
//

import SwiftUI

struct Email: View {
    @State var UserEmail:String=""
    @State var UserPassword:String=""
    @EnvironmentObject var viewModel : AuthViewModel
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        NavigationView{
        ZStack{
            Rectangle().foregroundColor(.white)
            VStack{
                ZStack
                {
            Rectangle()
                .foregroundColor(myPink)
                .frame(height:200)
                .clipShape(RoundedShape(corners: [.bottomRight]))
                .ignoresSafeArea()
                    HStack{
                    VStack(alignment:.leading)
                    {
                        Spacer().frame(height:30)
                    Text("Hello !")
                            .font(myHeadline)
                            .foregroundColor(.white)
                    Text("Welcome to OutLoop")
                            .font(myHeadline)
                            .foregroundColor(.white)
                    }.padding([.horizontal],30)
                    Spacer()
                    }
                }.ignoresSafeArea()
                VStack(){
                    HStack
                    {
                        Image(systemName:"envelope")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.gray.opacity(0.6))
                            .frame(width:25,height: 25)
                        TextField("Email", text: $UserEmail)
                            .font(myContent)
                        
                    }
                    Divider()
                    HStack
                    {
                        Image(systemName:"lock")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.gray.opacity(0.6))
                            .frame(width:25,height: 25)
                        TextField("Password", text: $UserPassword)
                            .font(myContent)
                        
                    }
                    Divider()
                    HStack{
                        Spacer()
                        NavigationLink {
                            Text("Reset Password")
                        } label: {
                            Text("Reset Password")
                                .font(myAnnotation)
                        }.navigationBarHidden(true)
                    }
                    Spacer().frame(height:40)
                    Button {
                        viewModel.register(withEmail:UserEmail, password: UserPassword)
                    } label: {
                        ZStack{
                         LargeButton(color: myPink)
                            Text("Submit")
                                .foregroundColor(.white)
                                .font(mySubContent)
                        }//submit
                    }
                    Button {
                        dismiss()
                    } label: {
                        Text("Login in other ways")
                            .foregroundColor(.blue).opacity(0.7)
                            .font(myAnnotation)
                    }

                    Spacer()
                    HStack{
                    Text("Already have an account?")
                        .foregroundColor(.gray)
                        .font(myAnnotation)
                        NavigationLink {
                            LoginView()
                        } label: {
                            Text("Login")
                                .font(myAnnotation)
                        }

                    }
                }.padding([.horizontal],50)
            Spacer()
            }
        }
        }
    }
}

struct Email_Previews: PreviewProvider {
    static var previews: some View {
        Email()    }
}
