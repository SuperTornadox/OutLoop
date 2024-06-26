//
//  Community.swift
//  OutLoop01
//
//  Created by 何徐宸 on 7/20/22.
//

import SwiftUI
import Foundation
import FirebaseAuth
import FirebaseCore
import FirebaseAnalytics


//我们在这里创建了一个类 作为模版
//这个类具有observableObject的性质
//因此可以被各个视图访问

class UserSettings:ObservableObject
    {
        @Published public var testingInt:Int
        @Published public var testingString:String
        @State public var testingText:String
    
    
    init(IncomingInt:Int,IncomingString:String,IncomingText:String)
        {
            self.testingInt = IncomingInt
            self.testingString = IncomingString
            self.testingText = IncomingText
        }
        
    }
struct EventView: View

{
    
   // 我们在这里创建一些state用来储存数据 当其他的页面需要改变或者使用这些数据的时候 它们就使用Binding的形式
    @State public var istrue :Bool = false
    @State public var message : String = ""
    @State public var eventName : String = ""
    @State public var groupName : String = ""
    @State public var duration : Double = 120.0
    

    @StateObject var testsettings:UserSettings = UserSettings(IncomingInt: 60, IncomingString: "hello world",IncomingText: "")
    //这里创建这个存储信息的结构体的实例并且初始化
    //这里的参数表是init（）函数的参数表
     var body: some View
    {
      
        NavigationView
        {
            ZStack
            {
                Rectangle()
                    .ignoresSafeArea()
                    .foregroundColor(myPink)
                VStack
                {
                    //....Top1/5......Self Profiles
                    Spacer().frame(height:70)
                    HStack
                    {
                        VStack(alignment:.leading)
                        {
                            Text("Hi,Eric He")
                                .foregroundColor(.white)
                                .font(myHeadline)
                            Text("Set something todo")
                                .foregroundColor(.white)
                                .font(myContent)
                        }
                        Spacer()
                            .frame(width:100)
                        Image("Me")//Head Image
                            .resizable()
                            .aspectRatio(contentMode: .fill)//缩放的标准,是根据长边还是短边
                            .frame(width:70,height: 70)
                            .clipShape(Circle())//创建一个剪切模版
                            .padding([.horizontal],0)
                    }
                    
                    //....Event Settings.......
                    ZStack
                    {
                        RoundedRectangle(cornerRadius: 30)
                            .ignoresSafeArea()
                            .foregroundColor(.white)
                        VStack
                        {
                            Spacer().frame(height:15)
                            HStack
                            {
                                Text("Event settings")
                                    .font(mySubHeadline)
                                    .padding(.horizontal,30)
                                Spacer()
                            }
                            Spacer().frame(height:5)
                            Group//todo and last for
                            {
                                HStack
                                {
                                    Text("What are you going to do")
                                        .font(myContent)
                                        .padding(.horizontal,30)
                                    Spacer()
                                }
                                EventChooseCard1()
                                Spacer().frame(height:10)
                                HStack
                                {
                                    Text("How long will the event last")
                                        .font(myContent)
                                        .padding(.horizontal,30)
                                    Spacer()
                                }
                                EventTimeBar(duration: 120.0)
                            }
                            Spacer().frame(height:10)
                            Group//leave message and invite
                            {
                                HStack
                                {
                                    Text("Would you like to invite someone")
                                        .font(myContent)
                                        .padding(.horizontal,30)
                                    Spacer()
                                }
                                Spacer().frame(height:10)
                                EventChooseCard2()
                                Spacer().frame(height:10)
                                HStack{
                                    Text("Leave a message to him/her")
                                        .font(myContent)
                                        .padding(.horizontal,30)
                                    Spacer()
                                    Text("The text is \(testsettings.testingText)")
                                }
                                Spacer().frame(height:10)
                                ZStack
                                {
                                    RoundedRectangle(cornerRadius: 30)
                                        .frame(width:350,height:40)
                                        .foregroundColor(myGray)
                                    TextField("Input...", text: $message)
                                        .tint(.white)
                                        .frame(width:300)
                                        .font(mySubContent)
                                        .multilineTextAlignment(.leading)
                                }
                            Spacer().frame(height:10)
                                                                
                                
                            NavigationLink(destination:NewMain(theUserSettings:testsettings))
                                {
                                    ZStack
                                    {
                                        RoundedRectangle(cornerRadius: 30)
                                            .frame(width:150,height:40)
                                            .foregroundColor(.green)
                                        Text("Next")
                                            .font(mySubContent)
                                            .foregroundColor(.white)
                                    }
                                }

                                ///
                                ///
                                ///
                                ///
                                ///
                                ///
                                ///NAVIGATION LINK is HERE
                                ///
                                ///
                                ///
                                ///
                                ///
                                ///
                                ///
                                Spacer()
                                
                            }
                        }.ignoresSafeArea()
                        
                    }.ignoresSafeArea()
                }//VStack...end
                .ignoresSafeArea()
            }//ZStack...end
        }
    }
    
    

}
struct NewMain: View {

    @ObservedObject var theUserSettings:UserSettings
    @State var testtext:String = ""
    var body: some View
    {
        
        Text("hello world")
        
        Text("the testing int is \(theUserSettings.testingInt)")
        
        Text("the testing string is \(theUserSettings.testingString)")
        
        TextField("Input...", text: $testtext)
            .tint(.white)
            .frame(width:300)
            .font(mySubContent)
            .multilineTextAlignment(.leading)
          //.onDisappear(theUserSettings=)
    }
}

struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        
        EventView()
        
    }
}
