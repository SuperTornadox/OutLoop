//
//  YourInvitationCard.swift
//  OutLoop01
//
//  Created by 何徐宸 on 7/24/22.
//

import SwiftUI

struct AppointmentCard: View {
    @State var FriendNum=3
    var body: some View {
        ZStack{
    RoundedRectangle(cornerRadius: 30)
            .foregroundColor(.white)
            .frame(width:150,height: 130)
            .shadow(color: .gray, radius: 2, x: 1, y: 1)
        VStack(spacing:0){
        Text("Study")
            .font(myBoldSubContent)
            .foregroundColor(myDark)
            .padding([.top],10)
        Spacer().frame(height:5)
        Text("10:30-12:00")
            .font(mySmallAnnotation)
            .foregroundColor(myDark)
        Spacer().frame(height:5)
        HStack{
            ForEach(1..<3){
                i in
                Image("Friend\(i)")
                    .resizable()
                    .scaledToFill()
                    .frame(width:30,height: 30)
                    .clipShape(Circle())
                
            }
        }//images
        Spacer().frame(height:5)
        ZStack
        {
            SmallButton(color: .green)
        Text("Start")
                .font(myAnnotation)
                .foregroundColor(.white)
        }
          }
        }
    }
}

struct AppointmentCard_Previews: PreviewProvider {
    static var previews: some View {
        AppointmentCard()
    }
}
