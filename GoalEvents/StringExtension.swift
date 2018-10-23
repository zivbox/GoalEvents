//
//  StringExtension.swift
//  GoalEvents
//
//  Created by Gooooal on 2018/10/09.
//  Copyright © 2018年 Gooooal. All rights reserved.
//

import Foundation


extension String {
    
    
    // MARK: 字符串的长度
    public var length: Int {
        
        get {
            return self.count
        }
    }
    
    
    // MARK: 判断字符串是否为空
    public var isCheckNull: String {
        
        get {
            if self.isEmpty {
                return ""
            } else {
                return self
            }
        }
    }
    
    
    // MARK: 判断字符串是否为手机号
    /**
     *  判断字符串是否为手机号
     *  e.g. self.isMobile
     */
    public var isMobile: Bool {
        
        let mobile      : String = "^1((3[0-9]|4[57]|5[0-35-9]|7[0678]|8[0-9])\\d{8}$)"
        let predicMobile: NSPredicate = NSPredicate(format: "SELF MATCHES %@", mobile)
        
        return predicMobile.evaluate(with: self)
    }

    /**
     *  判断字符串是否为手机号
     *  e.g. String().utilsValidateMobile(mobile: "16356356992")
     */
    public func utilsValidateMobile(mobile: String) -> Bool {
        
        let mobile      : String = "^1((3[0-9]|4[57]|5[0-35-9]|7[0678]|8[0-9])\\d{8}$)"
        let predicMobile: NSPredicate = NSPredicate(format: "SELF MATCHES %@", mobile)
        
        return predicMobile.evaluate(with: self)
    }
    
    
}
