//
//  ColorManager.swift
//  OutLoop01
//
//  Created by 何徐宸 on 7/20/22.
//

import SwiftUI
public let myPink = Color(red: 250/255, green: 114/255, blue: 100/255)
public let myRed = Color(red: 212/255, green: 42/255, blue: 42/255)
public let myDark=Color(red: 33/255, green: 37/255, blue: 41/255)
public let myGray=Color(red: 220/255, green: 220/255, blue: 220/255)
struct ColorManager: View {
    var body: some View {
        HStack{
        VStack{
        Circle()
            .foregroundColor(myPink)
            .frame(width: 50, height: 50)
        Text("myPink")
            .foregroundColor(myPink)
         }
        VStack{
            Circle()
                .foregroundColor(myRed)
                .frame(width: 50, height: 50)
            Text("myRed")
                .foregroundColor(myRed)
             }
        VStack{
                Circle()
                    .foregroundColor(myDark)
                    .frame(width: 50, height: 50)
                Text("myDark")
                    .foregroundColor(myDark)
                 }
        VStack{
                    Circle()
                        .foregroundColor(myGray)
                        .frame(width: 50, height: 50)
                    Text("myGray")
                        .foregroundColor(myGray)
                     }
        }
    }
}

struct ColorManager_Previews: PreviewProvider {
    static var previews: some View {
        ColorManager()
    }
}
