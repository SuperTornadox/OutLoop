//
//  FontManager.swift
//  OutLoop01
//
//  Created by 何徐宸 on 7/20/22.
//

import SwiftUI
public let myLargeHeadline = Font.custom("Outfit-Bold", size: 60)
public let myHeadline = Font.custom("Outfit-Bold", size: 30)
public let mySubHeadline = Font.custom("Outfit-Bold", size: 24)
public let myContent = Font.custom("Outfit-Medium", size: 20)
public let myBoldContent = Font.custom("Outfit-Bold", size: 20)
public let mySubContent = Font.custom("Outfit-Medium", size: 17)
public let myBoldSubContent = Font.custom("Outfit-Bold", size: 17)
public let myAnnotation = Font.custom("Outfit-Medium", size: 14)
public let mySmallAnnotation = Font.custom("Outfit-Bold", size: 12)
struct FontManager: View {
    var body: some View {
        VStack{
        Text("myLargeHeadline")
            .font(myLargeHeadline)
        Text("myHeadline")
            .font(myHeadline)
        Text("mySubHeadline")
            .font(mySubHeadline)
        Text("myContent")
            .font(myContent)
        Text("myBoldContent")
            .font(myBoldContent)
        Text("mySubContent")
            .font(mySubContent)
        Text("myBoldSubContent")
            .font(myBoldSubContent)
        Text("myAnnotation")
            .font(myAnnotation)
        Text("mySmallAnnotation")
            .font(mySmallAnnotation)
     
    }

    }
}

struct FontManager_Previews: PreviewProvider {
    static var previews: some View {
        FontManager()
            .previewInterfaceOrientation(.portrait)
    }
}


