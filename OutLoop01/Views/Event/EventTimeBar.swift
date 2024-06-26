//
//  EventTimeBar.swift
//  OutLoop01
//
//  Created by 何徐宸 on 10/2/22.
//

import SwiftUI

struct EventTimeBar: View {
    @State var duration:Double
    let ScreenWidth = UIScreen.main.bounds.width
    let ScreenHeight = UIScreen.main.bounds.height
    var body: some View {
        VStack
        {
            Slider(value: $duration, in: 0...240,step:15)
                .frame(width: 300)
                .tint(.purple)//tint 就是主题颜色
            let dura = Int(duration)
            Text("\(dura)min")
                .font(mySubContent)
                .offset(y:-5)
                .offset(x:CGFloat(dura)/240*275-135)
            
        }
    }
}
struct EventTimeBar_Previews: PreviewProvider {
    static var previews: some View {
        EventTimeBar(duration: 120)
    }
}
