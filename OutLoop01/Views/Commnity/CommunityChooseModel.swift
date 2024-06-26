//
//  EventChooseModel.swift
//  OutLoop01
//
//  Created by 何徐宸 on 8/2/22.
//

import SwiftUI
import Foundation

    enum CommunityCardName:String ,CaseIterable{
        case Case1
        case Case2
        case Case3
        case Case4
        case Case5
        case Case6
        case Case7
    
    var title:String{
        switch self{
        case CommunityCardName.Case1: return "Painting Starters"
        case CommunityCardName.Case2: return "Homework Assistance"
        case CommunityCardName.Case3: return "King's College of London"
        case CommunityCardName.Case4: return "Bass Club"
        case CommunityCardName.Case5: return "Shanghai Cycling Amaturs"
        case CommunityCardName.Case6: return "Swifters"
        case CommunityCardName.Case7: return "Astronautics"
        }
    }
    var image:String{
        switch self{
        case CommunityCardName.Case1: return "🎨"
        case CommunityCardName.Case2: return "✍️"
        case CommunityCardName.Case3: return "🏫"
        case CommunityCardName.Case4: return "🎸"
        case CommunityCardName.Case5: return "🚴‍♀️"
        case CommunityCardName.Case6: return "👨‍💻"
        case CommunityCardName.Case7: return "🛰"
        }
    }
        
    }

