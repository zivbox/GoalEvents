//
//  DateExtension.swift
//  GoalEvents
//
//  Created by Gooooal on 2018/10/09.
//  Copyright © 2018年 Gooooal. All rights reserved.
//

import Foundation


public struct UtilsTimeFormat {
    var format_default       : String      = "yyyy/MM/dd HH:mm:ss"
    var format_yyyyMMddHHmm  : String      = "yyyy/MM/dd HH:mm"
    var format_yyyyMMdd      : String      = "yyyy/MM/dd"
    var format_MMddHHmm      : String      = "MM/dd HH:mm"
    var format_MMdd          : String      = "MM/dd"
    var format_HHmm          : String      = "HH:mm"
}


extension Date {
    
    
    // MARK: 获取当前时间
    /**
     *  获取当前时间
     *  e.g. Date().TimeCurrentDate(format: UtilsTimeFormat.format_default.rawValue)
     */
    public func utilsTimeCurrentDate(format: String) -> String {
        
        let currentDate = Date()
        let dateFormatter = DateFormatter()
        /// 设置时区，时间为当前系统时间
        dateFormatter.locale = Locale.current
        dateFormatter.dateFormat = format
        let stringTime = dateFormatter.string(from: currentDate)
        
        return stringTime;
    }
    
    
    // MARK: 根据时间戳还原成格式化时间
    /**
     *  根据时间戳还原成格式化时间（date单位秒）
     *  e.g. Date().TimeWithString(format: UtilsTimeFormat.format_default.rawValue, date: "1540181395")
     */
    public func utilsTimeWithRestore(format: String, date: String) -> String {
        
        return utilsTimeRestore(format: format,
                                date: date)
    }
    
    
    // MARK: 还原过程
    /**
     *  还原时间过程
     *  e.g. utilsTimeRestore(format: UtilsTimeFormat.format_default.rawValue, date: "1540181395")
     */
    private func utilsTimeRestore(format: String, date: String) -> String {
        
        let dateFormatter = DateFormatter()
        /// 设置时区，时间为当前系统时间
        dateFormatter.locale = Locale.current
        dateFormatter.dateFormat = format
        
        let currentStr = NSString(string: date)
        let timeSta: TimeInterval = currentStr.doubleValue
        let stringDate = Date(timeIntervalSince1970: timeSta)
        let stringTime = dateFormatter.string(from: stringDate)
        
        return stringTime;
    }
    
    
}
