//
//  SwiftUIView.swift
//  OutLoop01
//
//  Created by 何徐宸 on 2/7/23.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        NavigationView{
            
            ZStack{
                Rectangle().foregroundColor(myPink)
                //background Rec
                VStack{
                    
                    Spacer()
                        .frame(height:100)
                    HStack
                    {
                        
                        Text("Create your account!")
                            .font(myHeadline)
                            .foregroundColor(.white)
                            .padding(.horizontal,30)
                        Spacer()
                    }
                    Spacer()
                    
                }
            }.ignoresSafeArea()
            //background Zstack
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
