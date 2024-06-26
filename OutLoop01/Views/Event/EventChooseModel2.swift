//
//  EventChooseModel1.swift
//  OutLoop01
//
//  Created by 何徐宸 on 10/1/22.
//

import Foundation
import SwiftUI
struct EventChooseModel2
{
    var titles :[[String]]
    //这样定义二维数组,不需要定义数组的长度 只需要声明类型和维度
    
    init()
    {
        titles = [["Friend","No"],["Random in Group","Random Pairing"]]
    }
    //这里测试了初始化函数(构造函数)的作用,它是这个结构体的一个识别码,输入了这个构造函数的才可以调用结构体内的其他成员
    //例如在这里如果init()内为true则titles最后一个元素为more,false则为morr
    //当然我们也可以令init函数没有输入表 这样每一次调用这个结构体时,生成的结构体都完全一样
    //我们可以直接对这个结构体进行调用 也可以生成一个结构体 再调用
}   //struct 需要严格的init函数
    
