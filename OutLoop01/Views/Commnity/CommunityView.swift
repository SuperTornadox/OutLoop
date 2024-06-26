//
//  Event.swift
//  OutLoop01
//
//  Created by 何徐宸 on 7/20/22.
//

import SwiftUI

struct CommunityView: View {
    @State  var UserName:String="Eric He"
    @State var TimeNow = ""
    @State var TodoNum = 3
    @State var UserSearchContent :String = ""
    let timer=Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var dateFormatter:DateFormatter{
        let fmtr=DateFormatter()
        fmtr.dateFormat="dd LLLL yyyy,EEE"
        return fmtr
    }
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 40)
                .foregroundColor(myPink)
                .ignoresSafeArea()
            VStack{
                Spacer()
                    .frame(height:70)
                HStack(alignment:.center){
                VStack(alignment:.leading)
                    {
                    HStack{
                Text("Hi,")
                    .font(myHeadline)
                    .foregroundColor(Color.white)
                Text(UserName)
                    .font(myHeadline)
                    .foregroundColor(Color.white)
                
            }//Hi Eric He
                HStack{
                Text(TimeNow+" ").onReceive(timer){
                    _ in self.TimeNow=dateFormatter.string(from: Date())
                }
                .foregroundColor(Color.white)
                .opacity(0.8)
                .font(myContent)
                }//date
                    }.padding([.horizontal],30)//Hi and date
                Spacer()
                Image("Me")//Head Image
                        .resizable()
                        .aspectRatio(contentMode: .fill)//缩放的标准,是根据长边还是短边
                        .frame(width:70,height: 70)
                        .clipShape(Circle())//创建一个剪切模版
                        .padding([.horizontal],30)
                }//top 1/5
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(.white)
                        .opacity(0.2)
                        .frame(height:40)
                        .padding([.horizontal],20)
                    HStack{
                        Image(systemName:"magnifyingglass")
                            .foregroundColor(myDark)
                            .opacity(0.5)
                            .padding([.leading],30)
                        TextField("Search for more groups",text:$UserSearchContent)
                            .font(myAnnotation)
                        Spacer()
                        
                    }
                    
                }//Search Bar
                Spacer().frame(height:10)
                CommunityChooseCard()
                    .frame(height:100)
                Spacer().frame(height:20)
                
                RoundedRectangle(cornerRadius: 30)
                    .foregroundColor(.white)
                    .ignoresSafeArea()
                
                Spacer()
                
            }//MainVstack
            .ignoresSafeArea()
            
        }//MainBackground
        .ignoresSafeArea()
    }
}

struct CommunityView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityView()
    }
}

