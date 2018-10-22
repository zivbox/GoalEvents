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




//////////////////////////////////////////////////////////////
// MARK: - -----------------------------
// MARK: 方法、函数的方式实现宏定义

//  MARK: 字体
/**
 *  Arial 字体
 *  e.g. FontArial(s: 13.0)
 */
func FontArial(s: CGFloat) -> UIFont {
    return UIFont.init(name: "Arial", size: s) ?? UIFont.init()
}

/**
 *  Arial-BoldMT 字体(Arial加粗)
 *  e.g. FontAriBold(s: 13.0)
 */
func FontAriBold(s: CGFloat) -> UIFont {
    return UIFont.init(name: "Arial-BoldMT", size: s) ?? UIFont.init()
}









