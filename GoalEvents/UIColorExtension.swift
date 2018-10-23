//
//  UIColorExtension.swift
//  GoalEvents
//
//  Created by Gooooal on 2018/10/09.
//  Copyright © 2018年 Gooooal. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    
    //  MARK: RGB颜色
    /**
     *  RGB颜色（默认透明度 1）
     *  e.g. UIColor().utilsColorRGB(r: 13.0, g:37.0, b:25.0)
     */
    public func utilsColorRGB(r: CGFloat, g: CGFloat, b: CGFloat) -> UIColor {
        
        return UIColor.init(red: r / 255.0,
                            green: g / 255.0,
                            blue: b / 255.0,
                            alpha: 1.0)
    }
    
    /**
     *  RGB颜色（没有默认透明度 自设置）
     *  e.g. UIColor().utilsColorRGBA(r: 13.0, g:37.0, b:25.0, a:0.5)
     */
    public func utilsColorRGBA(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat) -> UIColor {
        
        return UIColor.init(red: r / 255.0,
                            green: g / 255.0,
                            blue: b / 255.0,
                            alpha: a)
    }
    
    
    //  MARK: 16进制颜色
    /**
     *  16进制 转成10进制RGB颜色（默认透明度 1）
     *  e.g. UIColor().utilsColorHex(h: 0x0054AE)
     */
    public func utilsColorHex(h: UInt) -> UIColor {
        
        return UIColor.init(red: CGFloat((h & 0xFF0000) >> 16) / 255.0,
                            green: CGFloat((h  & 0x00FF00) >> 8) / 255.0,
                            blue: CGFloat(h & 0x0000FF) / 255.0,
                            alpha: 1.0)
    }
    
    /**
     *  16进制 转成10进制RGB颜色（没有默认透明度 自设置）
     *  e.g. UIColor().utilsColorHexA(h: 0x0054AE, a: 0.5)
     */
    public func utilsColorHexA(h: UInt, a: CGFloat) -> UIColor {
        
        return UIColor.init(red: CGFloat((h & 0xFF0000) >> 16) / 255.0,
                            green: CGFloat((h  & 0x00FF00) >> 8) / 255.0,
                            blue: CGFloat(h & 0x0000FF) / 255.0,
                            alpha: a)
    }
    
    
    //  MARK: 16进制#号颜色
    /**
     *  16进制#号开头 转成10进制RGB颜色（默认透明度 1）
     *  e.g. UIColor().utilsColorHexJH(h: "#0054AE")
     */
    public func utilsColorHexJH(h: String) -> UIColor {
        
        return utilsColorFormHexJH(h: h,
                                   a: 1.0)
    }
    
    /**
     *  16进制#号开头 转成10进制RGB颜色（没有默认透明度 自设置）
     *  e.g. UIColor().utilsColorHexJHA(h: "#0054AE", a: 0.5)
     */
    public func utilsColorHexJHA(h: String, a: CGFloat) -> UIColor {
        
        return utilsColorFormHexJH(h: h,
                                   a: a)
    }
    
    /**
     *  Private Methods: utilsColorHexJH && utilsColorHexJHA
     */
    private func utilsColorFormHexJH(h: String, a: CGFloat) -> UIColor {
        
        var hex:   String  = h
        var alpha: CGFloat = a
        var red:   CGFloat = 0.0
        var green: CGFloat = 0.0
        var blue:  CGFloat = 0.0
        
        if hex.hasPrefix("#") {
            let index = hex.index(hex.startIndex, offsetBy: 1)
            hex = String(hex[index...])
        }
        
        let scanner = Scanner(string: hex)
        var hexValue: CUnsignedLongLong = 0
        if scanner.scanHexInt64(&hexValue) {
            switch (hex.count) {
            case 3:
                red   = CGFloat((hexValue & 0xF00) >> 8)       / 15.0
                green = CGFloat((hexValue & 0x0F0) >> 4)       / 15.0
                blue  = CGFloat(hexValue & 0x00F)              / 15.0
            case 4:
                red   = CGFloat((hexValue & 0xF000) >> 12)     / 15.0
                green = CGFloat((hexValue & 0x0F00) >> 8)      / 15.0
                blue  = CGFloat((hexValue & 0x00F0) >> 4)      / 15.0
                alpha = CGFloat(hexValue & 0x000F)             / 15.0
            case 6:
                red   = CGFloat((hexValue & 0xFF0000) >> 16)   / 255.0
                green = CGFloat((hexValue & 0x00FF00) >> 8)    / 255.0
                blue  = CGFloat(hexValue & 0x0000FF)           / 255.0
            case 8:
                red   = CGFloat((hexValue & 0xFF000000) >> 24) / 255.0
                green = CGFloat((hexValue & 0x00FF0000) >> 16) / 255.0
                blue  = CGFloat((hexValue & 0x0000FF00) >> 8)  / 255.0
                alpha = CGFloat(hexValue & 0x000000FF)         / 255.0
            default:
                print("Invalid RGB string, number of characters after '#' should be either 3, 4, 6 or 8", terminator: "")
            }
        } else {
            print("Scan hex error")
            return UIColor.clear
        }
        
        return UIColor.init(red: red,
                            green: green,
                            blue: blue,
                            alpha: alpha)
        
    }
    
    
}
