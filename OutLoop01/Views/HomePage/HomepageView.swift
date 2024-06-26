//
//  Homepage.swift
//  OutLoop01
//
//  Created by 何徐宸 on 7/20/22.
//

import SwiftUI
import SmartlookAnalytics

struct HomepageView: View {
    @State var UserName:String="Eric He"
    @State var TimeNow = ""
    @State var TodoNum = 3
    
    let timer=Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var dateFormatter:DateFormatter{
        let fmtr=DateFormatter()
        fmtr.dateFormat="dd LLLL yyyy,EEE"
        return fmtr
       
    }
  //  @EnvironmentValues public var istopped :Bool = true
    
    @State var zstacky: CGFloat = 0
    var body: some View {
        ScrollView{
           
                ZStack
                {
                    RoundedRectangle(cornerRadius: 40)
                        .foregroundColor(myPink)
                        .ignoresSafeArea()
                    VStack(alignment:.leading)
                    {//main structure
                        Spacer().frame(height:50)
                        TopBarView().frame(height:80)
                        
                        FavouritePart.padding([.bottom,],20)
                    
                        
                        ZStack
                        {
                            RoundedRectangle(cornerRadius: 40)
                                .foregroundColor(Color.white)
                            VStack{
                                TodoPart
                                InvitationPart
                                Spacer().frame(height:30)
                            }
                        }
                        
                    }.ignoresSafeArea()
                    
                }//main ZStack
                
            
        }//scrollView
        .ignoresSafeArea()
        }//some view
}//struct
struct HomepageView_Previews: PreviewProvider {
    static var previews: some View {
        HomepageView()
    }
}
    
extension HomepageView
{
        var FavouritePart: some View
    {
        VStack(alignment:.center)
        {
            HStack{
                Text("Your Favourites:")
                .font(myContent)
                .foregroundColor(Color.white)
                .padding([.horizontal],30)
                Spacer()
            }//"Your Favourites"
            
            HStack{
            ForEach(0...2,id:\.self)
            {
                    _ in//形参
                    YourFavouiteCard().padding([.horizontal],5)
            }
                 
            }.padding([.horizontal],30)
            //Favourites ScrollView
        }//Your favourites
    }
}
extension HomepageView
{
    var TodoPart:some View{
        VStack(spacing:0){
            Spacer()
                .frame(height:20)
            HStack{
                Text("Todo")
                    .foregroundColor(myDark)
                    .font(mySubHeadline)
                    .padding([.horizontal],30)
                Spacer()
            }//Todo
            ScrollView(.horizontal,showsIndicators: false){
                HStack{
                    ForEach(1..<4){
                        _ in
                        AppointmentCard()
                    }
                }.frame(height:150)
                    .padding([.leading],20)
            }//Todo Cards
        }
    }
}
extension HomepageView{
    var InvitationPart:some View{
        VStack{
            HStack{
                Text("Invitations")
                    .padding([.leading],30)
                    .font(mySubHeadline)
                Spacer()
            }
            
            YourInvitationCard(FriendNum:4)
        }
    }
}
