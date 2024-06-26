//
//  Navigator.swift
//  OutLoop01
//
//  Created by 何徐宸 on 7/19/22.
//

import SwiftUI

struct NavigatorView: View {
    //全局变量声明
    @State public var CurrentPage:String = "Homepage"
    
    var body: some View {
        //局部变量声明
        let screenwidth = UIScreen.main.bounds.width
        let screenheight = UIScreen.main.bounds.height
        
        ZStack(alignment: .top){
            RoundedRectangle(cornerRadius: 30).foregroundColor(myPink)
            //background Pink
            
            VStack(spacing:0){
                //main stack
                
                Spacer().frame(height:10)
                    switch CurrentPage{
                    case "Homepage":
                        HomepageView()
                    case "Event":
                        EventView()
                    case "Community":
                        CommunityView()
                    default:
                        ScrollView
                        {
                            GeometryReader
                            {
                                geo in
                                VStack{
                                    HomepageView()
                                    Text("\(geo.frame(in: .global).midX)")
                                }
                            }
                            
                            
                        }.ignoresSafeArea()
                        //为了保证switch语句是穷尽一切可能性的因此加入default选项
                    }
                
                
                ZStack{
                    Rectangle()
                        .frame(height:90)
                        .foregroundColor(myPink)
                    VStack{
                        HStack(spacing:screenwidth/5){
                            
                            //Homepage link
                                
                                Image(systemName: "house")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width:37,height: 37)
                                    .foregroundColor(Color.white)
                                    .onTapGesture(perform: {
                                        DispatchQueue.main.asyncAfter(deadline: .now()+0)
                                        {CurrentPage = "Homepage"}
                                    })//延时触发,现在设置为0
                            
                            
                            //Event Page link
                            Button {
                                CurrentPage = "Event"
                            } label: {
                                Image(systemName: "flag.checkered.2.crossed")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width:55,height: 55)
                                    .foregroundColor(Color.white)
                            }
                            
                            //Community Page link
                            Button {
                                CurrentPage = "Community"
                            } label: {
                                Image(systemName: "bonjour")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width:35,height: 35)
                                    .foregroundColor(Color.white)
                            }
                        }
                        .padding([.horizontal],40)
                        Spacer().frame(height:20)
                    }
                }.ignoresSafeArea()
            }.ignoresSafeArea()
        }.ignoresSafeArea()
    }
}
struct Navigator_Previews: PreviewProvider {
    static var previews: some View {
        NavigatorView()
    }
}
