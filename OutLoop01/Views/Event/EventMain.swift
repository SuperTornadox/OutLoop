//
//  EventMain.swift
//  OutLoop01
//
//  Created by 何徐宸 on 10/3/22.
//

/*import SwiftUI

struct EventMain: View {
    //类的参数表
   // @State var time = EventData(duration: 120)
    @State var isTimerRunning = false
    @State private var startTime =  Date()
    //@State private var timerString = "00.00"
    @State private var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()//every:1 就是指变化的间隔为1 而不是1s变化一次
  //  private var TimeSet = EventView().data.duration
    @State private var TimeRemaining:Int = EventView().data.duration
    
    //类的函数表
    func stopTimer() {
        isTimerRunning.toggle()
        print("suspended")
    }
    
    func startTimer() {
        isTimerRunning.toggle()
        print("started")
    }
    func theProgressTrack() -> some View{
        ZStack{
            Circle()
                .trim(from: 0,to:(CGFloat(TimeRemaining)/CGFloat(TimeSet)))
                .stroke(style: .init(lineWidth: 30,lineCap: .round,lineJoin:.bevel))
                .frame(width:270)
                .rotationEffect(Angle(degrees: -90))
                .foregroundColor(myGray)
            Circle()
                .foregroundColor(.white)
                .frame(width:250)
            
        }
    }
    func remainingTimeDisplay() ->String{
        
        return("\(TimeRemaining/60)"+":"+"\(TimeRemaining % 60 < 10 ? "0" : "")"+"\(TimeRemaining % 60)")
    }
func thePauseButton() ->some View
    {
        if(isTimerRunning == true)
        {
            self.stopTimer()
            return AnyView(
            ZStack
                {
                RoundedRectangle(cornerRadius: 30)
                .foregroundColor(.red)
                .frame(width: 200,height: 40)
                .onTapGesture{stopTimer()}
                Text("Pause")
                        .foregroundColor(.white)
                        .font(myContent)
                }
            )
            
            
        }
        else
        {
            if(TimeRemaining == TimeSet)//还没开始计时
            {
                return AnyView(
                    ZStack{
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundColor(.green)
                            .frame(width: 200,height: 40)
                            .onTapGesture {
                                startTimer()
                            }
                        Text("Start")
                            .foregroundColor(.white)
                            .font(myContent)
                        
                    }
                    )
                       
            }
            else
            {
                return AnyView(
                    ZStack{
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundColor(.green)
                            .frame(width: 200,height:40)
                            .onTapGesture {
                                startTimer()
                            }
                        Text("Continue")
                            .font(myContent)
                            .foregroundColor(.white)
                    }
                    )
                
            }
        }
    }
    
    //类的主函数
    var body: some View {
        
    
        ZStack{
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(myPink)
            VStack{
                Spacer()
                    .frame(height:200)
                ZStack
                {
                    theProgressTrack()
                    Text(remainingTimeDisplay())
                        .foregroundColor(myDark)
                        .font(myLargeHeadline)
                        .onReceive(timer) { _ in
                            if(isTimerRunning == true){
                                TimeRemaining -= 1}
                        }
                    
                
                  //....................计时器显示部分//......................
                
                    
                    
                }
                ZStack
                {
                    thePauseButton()
                    Spacer()
                        .frame(height:280)
                }
            }.ignoresSafeArea()
        }
    }
}
struct EventMain_Previews: PreviewProvider {
    static var previews: some View {
        EventMain()
    }
}
*/
