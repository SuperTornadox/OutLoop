//
//  EventChooseCard1.swift
//  OutLoop01
//
//  Created by 何徐宸 on 10/1/22.
//

import SwiftUI

struct EventChooseCard1: View {
    @State public var selected:String = ""
    @State private var buttoncolor:[[Color]] = [[.white,.white],[.white,.white],[.white,.white]]
    @State private var selectedx:Int = 0
    @State private var selectedy:Int = 0
    var Things = EventChooseModel1(i: true)
    
    func buttonchangecolor (x:Int,y:Int) {
        for i in 0...2
        {
            for j in 0...1
            {
                print("i:\(i),j:\(j)")
                buttoncolor[i][j] = .white
                buttoncolor[x][y] = myPink
                print("changed color at \(selectedx),\(selectedy)")
            }
        }
    }
   // Things.init(i:true)
   //.....body......
    var body: some View {
        VStack(spacing:15){
        ForEach(0..<3)
        { x in
            HStack(spacing:40){
            ForEach(0..<2)
            {
                y in
                ZStack{
                RoundedRectangle(cornerRadius: 30)
                    .foregroundColor(buttoncolor[x][y])
                    .frame(width: 150, height: 30)
                    .shadow(radius: 3)
                    .onTapGesture
                    {
                        buttonchangecolor(x: x, y: y)
                    }
                    
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

struct EventChooseCard1_Previews: PreviewProvider {
    static var previews: some View {
        EventChooseCard1()
    }
}
