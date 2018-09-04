//
//  JQDate.swift
//  ReferralKeep
//
//  Created by LJQ on 2018/9/4.
//  Copyright © 2018年 LJQ. All rights reserved.
//

import UIKit

extension NSDate {
    
    /// 获取当前时间
    ///
    /// - Parameter formatter: 时间格式
    /// - Returns: 时间字符串
    class func getCurrentTime(formatter:String) -> String {
        let formater = DateFormatter()
        formater.dateFormat = formatter
        let nowDate = NSDate()
        return formater.string(from: nowDate as Date)
    }
    
    
    /// 字符串转Date
    ///
    /// - Parameters:
    ///   - dateStr: 字符串时间
    ///   - dateFormatter: 时间格式
    /// - Returns: 时间Date
    class func stringToDate(dateStr:String, dateFormatter:String) -> NSDate {
        let formatter = DateFormatter()
        formatter.dateFormat = dateFormatter
        return formatter.date(from: dateStr)! as NSDate
    }
    
    /// Date转字符串
    ///
    /// - Parameters:
    ///   - date: 时间戳
    ///   - dateFormatter: 时间格式
    /// - Returns: 时间字符串
    class func DateToString(date:NSDate, dateFormatter:String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = dateFormatter
        return formatter.string(for: date as NSDate)!
    }
    
    
    
    
}
















