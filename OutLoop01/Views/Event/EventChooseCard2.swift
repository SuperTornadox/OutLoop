//
//  EventChooseCard1.swift
//  OutLoop01
//
//  Created by 何徐宸 on 10/1/22.
//

import SwiftUI

struct EventChooseCard2: View {
    var Things = EventChooseModel2()
   // Things.init(i:true)
    var body: some View {
        VStack(spacing:15){
        ForEach(0..<2)
        { x in
            HStack(spacing:40){
            ForEach(0..<2)
            {
                y in
                ZStack{
                
                RoundedRectangle(cornerRadius: 30)
                    .foregroundColor(.white)
                    .frame(width: 150, height: 30)
                    .shadow(radius: 3)
                   // Text(EventChooseModel1.init(i: true).titles[x][y])
                    Text(Things.titles[x][y])
                        .font(mySubContent)
                    
                }
            }
            }
        }
        }
    }
}

struct EventChooseCard2_Previews: PreviewProvider {
    static var previews: some View {
        EventChooseCard2()
    }
}
