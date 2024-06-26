//
//  RegistrationView.swift
//  OutLoop01
//
//  Created by 何徐宸 on 7/21/22.
//

import SwiftUI

struct RegisterView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var isShow = false
    var body: some View {
        ZStack{
        Rectangle()
                .foregroundColor(myPink)
                .ignoresSafeArea()//橙色背景
        VStack{
            Spacer().frame(height:120)
        RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.white)
                .ignoresSafeArea()
        
            }//白色背景
            VStack{
        HStack{
        VStack(alignment:.leading)
        {
            Spacer().frame(height:30)
        Text("Register")
            .font(myHeadline)
            .foregroundColor(.white)
        Text("Welcome to OutLoop")
            .font(myContent)
            .foregroundColor(.white)
        Spacer()
        }.padding([.horizontal],30)
           Spacer()
            Button {
                dismiss()
            } label: {
                BackButton(color: .white,height: 30)
                    .padding([.horizontal],30)
            }
            .padding([.bottom],30)

        }//橙色部分
            VStack(spacing:30){
                Spacer()
                ZStack{
                    XLargeButton(color:.white).shadow(color: .gray, radius: 3, x: 1, y: 1)
                    HStack{
                        Image("Facebook")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding([.leading],120)
                        Spacer()
                        Text("Facebook").font(myContent)
                            .padding([.trailing],110)
                    }
                }
                ZStack{
                    XLargeButton(color:.white).shadow(color: .gray, radius: 3, x: 1, y: 1)
                    HStack(){
                        Image("Wechat")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding([.leading],120)
                        Spacer()
                        Text("Wechat").font(myContent)
                            .padding([.trailing],125)
                    }
                }
                ZStack{
                    XLargeButton(color:.white).shadow(color: .gray, radius: 3, x: 1, y: 1)
                    HStack{
                        Image("Instagram")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding([.leading],120)
                        Spacer()
                        Text("Instagram").font(myContent)
                            .padding([.trailing],100)
                    }
                }
                ZStack{
                    XLargeButton(color:.white).shadow(color: .gray, radius: 3, x: 1, y: 1)
                    HStack{
                        Image("Line")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding([.leading],120)
                        Spacer()
                        Text("Line").font(myContent)
                            .padding([.trailing],155)
                        
                    }
                }
                Text("You can also register with email \r and link to social media later")
                    .font(myAnnotation)
                    .padding([.vertical],-10)
                    .frame(height:30)
                
                NavigationLink(destination:Email().navigationBarHidden(true),isActive:$isShow)
              {
                    ZStack{
                            XLargeButton(color:.white).shadow(color: .gray, radius: 3, x: 1, y: 1)
                            HStack{
                                Image("Email")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .padding([.leading],120)
                                Spacer()
                                Text("Email")
                                    .font(myContent)
                                    .padding([.trailing],140)
                                    .foregroundColor(.black)
                                
                            }
                        }
                }

                
                .padding([.bottom],20)
            }
            }
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
