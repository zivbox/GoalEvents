//
//  MacrosTool.swift
//  GoalEvents
//
//  Created by Gooooal on 2018/10/09.
//  Copyright © 2018年 Gooooal. All rights reserved.
//

import Foundation
import UIKit


//////////////////////////////////////////////////////////////
// MARK: - -----------------------------
// MARK: 常量的方式实现宏定义

//  MARK: 屏幕宽度
public let WinBounds: CGRect      = UIScreen.main.bounds
public let WinSize:   CGSize      = UIScreen.main.bounds.size
public let WinWidth:  CGFloat     = UIScreen.main.bounds.size.width
public let WinHeight: CGFloat     = UIScreen.main.bounds.size.height

var NavigationHeight: CGFloat {
    get {
        if WinHeight <= 667.0 {
            return 64.0
        } else {
            return 88.0
        }
    }
}

func W(x: CGFloat) -> CGFloat {
    
    return WinWidth * x / 375.0
}

func H(y: CGFloat) -> CGFloat {
    
    return WinHeight * y / 667.0
}




//////////////////////////////////////////////////////////////
// MARK: - -----------------------------
// MARK: 方法、函数的方式实现宏定义

//  MARK: 字体
/**
 *  Arial 字体
 *  e.g. FontArial(s: 13.0)
 */
public func FontArial(s: CGFloat) -> UIFont {
    
    return UIFont.init(name: "Arial", size: s) ?? UIFont.init()
}

public func FontArial2(_ s: CGFloat) -> UIFont {
    
    return UIFont.init(name: "Arial", size: s) ?? UIFont.init()
}

/**
 *  Arial-BoldMT 字体(Arial加粗)
 *  e.g. FontAriBold(s: 13.0)
 */
public func FontAriBold(s: CGFloat) -> UIFont {
    
    return UIFont.init(name: "Arial-BoldMT", size: s) ?? UIFont.init()
}


public func FontAriBold2(_ s: CGFloat) -> UIFont {
    
    return UIFont.init(name: "Arial-BoldMT", size: s) ?? UIFont.init()
}







