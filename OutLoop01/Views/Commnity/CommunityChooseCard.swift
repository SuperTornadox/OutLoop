//
//  CommunityChooseCard.swift
//  OutLoop01
//
//  Created by 何徐宸 on 9/30/22.
//

import SwiftUI

struct CommunityChooseCard: View {
    var body: some View {
       // let screenWidth = UIScreen.main.bounds.width
       
        ScrollView(.horizontal, showsIndicators:false) {
                // Text("\(screenWidth)")screenWidth
               // Text("\(geo.frame(in: .global).midX)")
                HStack(spacing:0){
                    ForEach(CommunityCardName.allCases,id:\.rawValue){
                        option in
                        
                        ZStack{
                            Circle()
                                .frame(width:90)
                                .foregroundColor(.white)
                                .shadow(radius: 3)
                            VStack
                            {
                                Text(option.image)
                                    .font(myHeadline)
                                Text(option.title)
                                    .frame(width:80)
                                    .font(mySmallAnnotation)
                                    .multilineTextAlignment(TextAlignment.center)
                                
                            }
                        }.padding([.horizontal],10)
                    }
                }//HStack
            }//ScrollView
            .padding(.horizontal,10)
        
    }//body
}//Community

struct CommunityChooseCard_Previews: PreviewProvider {
    static var previews: some View {
        CommunityChooseCard()
    }
}
