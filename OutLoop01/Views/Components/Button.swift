//
//  Button.swift
//  OutLoop01
//
//  Created by 何徐宸 on 7/21/22.
//

import SwiftUI

struct XLargeButton: View {
    public var color:Color
    var body: some View
    {
        RoundedRectangle(cornerRadius: 50)
            .frame(width: 280, height: 80)
            .foregroundColor(color)
    }
}


struct LargeButton: View {
    public var color:Color
    var body: some View
    {
        RoundedRectangle(cornerRadius: 50)
            .frame(width: 200, height: 50)
            .foregroundColor(color)
    }
}

struct HollowLargeButton:View{
    public var color:Color
    var body:some View
    {
        RoundedRectangle(cornerRadius: 30)
            .stroke(lineWidth: 2)
            .frame(width: 200, height: 50)
            .foregroundColor(color)
    }
}
struct SmallButton:View{
    public var color:Color
    var body: some View{
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 100, height: 30)
            .foregroundColor(color)
    }
}
struct BackButton:View{
    public var color:Color
    public var height:CGFloat=30
    var body: some View{
    Image(systemName: "arrowshape.turn.up.backward.fill")
        .resizable()
        .scaledToFit()
        .frame(width:height,height: height)
        .foregroundColor(color)
}
}


struct Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing:20){
        XLargeButton(color:myPink)
        LargeButton(color:myPink)
        HollowLargeButton(color: myPink)
        BackButton(color: myPink)
        SmallButton(color: myPink)
        }
    }
}


