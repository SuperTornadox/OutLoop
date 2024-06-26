//
//  YourFavouiteCard.swift
//  OutLoop01
//
//  Created by 何徐宸 on 7/20/22.
//

import SwiftUI

struct YourFavouiteCard: View {
    var body: some View {
        ZStack{
        RoundedRectangle(cornerRadius: 30)
            .frame(width:100,height: 100)
            .foregroundColor(Color.white)
            VStack{
                Text("📖").font(myHeadline)
              Text("Study")
                    .font(myBoldSubContent)
              Text("1 day ago")
                    .font(myAnnotation)
            }
        }
    }
}

struct YourFavouiteCard_Previews: PreviewProvider {
    static var previews: some View {
        YourFavouiteCard()
    }
}
