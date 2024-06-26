//
//  TopBarView.swift
//  OutLoop01
//
//  Created by 何徐宸 on 10/29/22.
//

import SwiftUI

struct TopBarView: View {
    
    @State  var UserName:String="Eric He"
    @State var TimeNow = ""
    @State var TodoNum = 3
    let timer=Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var dateFormatter:DateFormatter{
        let fmtr=DateFormatter()
        fmtr.dateFormat="dd LLLL yyyy,EEE"
        return fmtr
    }
    var body: some View {
            HStack(alignment:.center){
                VStack(alignment:.leading)
                {
                    HStack{
                        Text("Hi,")
                            .font(myHeadline)
                            .foregroundColor(Color.white)
                        Text(UserName)
                            .font(myHeadline)
                            .foregroundColor(Color.white)
                        
                    }//Hi Eric He
                    HStack{
                        Text(TimeNow+" ").onReceive(timer){
                            _ in self.TimeNow=dateFormatter.string(from: Date())
                        }
                        .foregroundColor(Color.white)
                        .opacity(0.8)
                        .font(myContent)
                    }//date
                }.padding([.horizontal],30)//Hi and date
                Spacer()
                Image("Me")//Head Image
                    .resizable()
                    .aspectRatio(contentMode: .fill)//缩放的标准,是根据长边还是短边
                    .frame(width:70,height: 70)
                    .clipShape(Circle())//创建一个剪切模版
                    .padding([.horizontal],30)
            }//top 1/5
        }
    
}
struct TopBarView_Previews: PreviewProvider {
    static var previews: some View {
        TopBarView()
    }
}
