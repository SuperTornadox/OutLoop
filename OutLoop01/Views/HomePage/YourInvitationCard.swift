//
//  Your InvitationCard.swift
//  OutLoop01
//
//  Created by 何徐宸 on 7/24/22.
//

import SwiftUI

struct YourInvitationCard: View {
    @State var UserLocation:String="Oxford University"
    @State var UpdateHH:Int=11
    @State var UpdateMM:Int=30
    @State var UpdateDD:Int=20
    @State var UpdateMMM:String="Dec"
    @State var UpdateWWW:String="FRI"
    public var FriendNum:Int
    var body: some View {
        VStack(spacing:20)
        {
            ForEach(1...4,id:\.self){
            i in
                
                HStack(alignment:.top){
                    VStack{
            Image("Friend\(i)")
                    .resizable()
                    .frame(width:50,height: 50)
                    .scaledToFill()
                    .clipShape(Circle())
            Text("Friend\(i)")
                            .font(myAnnotation)
                    }.padding([.leading],10)
                    //Portrait and Name
                        .padding([.top],5)
                        .padding([.leading],20)
                    ZStack{
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(.white)
                        .shadow(color: .gray, radius: 3, x: 1, y: 1)
                        .frame(width:280)
                        VStack(alignment:.leading){
                    Image("library")
                            .resizable()
                            .frame(width:260,height: 200)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .padding([.horizontal],7)
                            .padding([.top],7)
                            .shadow(color: .gray, radius: 1.5, x: 0.5, y: 0.5)
                    
                        /*RoundedRectangle(cornerRadius: 10)
                            .frame(minHeight:30)
                            .padding([.horizontal],10)
                            .foregroundColor(.white)
                            .shadow(color: .gray, radius: 1, x: 0.5, y: 0.3)*/
                    Text("Why not talk about the Information Theory tonight.Join us!")
                            .font(mySmallAnnotation)
                            .foregroundColor(myDark)
                           // .frame(maxWidth:280,alignment:.topLeading)
                        //.multilineTextAlignment(TextAlignment.leading)
                            .padding([.leading],10)
                           // .scaledToFill()
                        HStack()
                            {
                        Spacer()
                        Image(systemName: "location.circle.fill")
                                    .resizable()
                                    .foregroundColor(.blue)
                                    .frame(width: 12, height: 12)
                                    .opacity(0.8)
                        Text(UserLocation)
                            .font(mySmallAnnotation)
                            .foregroundColor(.blue)
                            .opacity(0.8)
                        Text("\(UpdateHH):\(UpdateMM) \(UpdateDD) \(UpdateMMM) \(UpdateWWW)")
                            .font(mySmallAnnotation)
                            .foregroundColor(.gray)
                            .opacity(0.8)
                            .padding([.trailing],15)
                        }//location & time
                        Spacer().frame(height:10)
                
                        
                        
                    }//UpdateContent
                        .padding([.horizontal],20)
                    }//内容框
                    }
                HStack{
                Spacer()
                ZStack{
                    SmallButton(color:.green)
                    Text("Accept")
                        .font(myAnnotation)
                        .foregroundColor(.white)
                }//button Accept
                ZStack{
                    SmallButton(color:.red)
                        Text("Deny")
                            .font(myAnnotation)
                            .foregroundColor(.white)
                    }//button Deny
                .padding([.trailing],20)
                }//Accept&Deny
                }
        }
        }//Main VStack
        }//Main Body


struct YourInvitationCard_Previews: PreviewProvider {
    static var previews: some View {
        YourInvitationCard(FriendNum: 4)
    }
}
