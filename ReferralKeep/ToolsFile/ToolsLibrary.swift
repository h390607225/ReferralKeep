//
//  ToolsLibrary.swift
//  ReferralKeep
//
//  Created by LJQ on 2018/8/14.
//  Copyright © 2018年 LJQ. All rights reserved.
//

import UIKit


/// 屏幕宽度
public let WIDTH = UIScreen.main.bounds.width

/// 屏幕高度
public let HEIGHT = UIScreen.main.bounds.height

/// 状态栏高度
public let STATEHEIGHT = UIApplication.shared.statusBarFrame.height

/// 状态栏+导航栏高度(为了适配iphone X)
public let NAVHEITH = (UIApplication.shared.statusBarFrame.height + 44)

/// 获取登录token
public var TOKEN = UserDefaults.standard.object(forKey: "token")

/// 屏幕宽度比
public let DEVICEWIDTH_SCALE = WIDTH / 375.0

/// 自定义输出
public func ljqPrint(_ items : Any...) { print("测试数据  \(NSDate.getCurrentTime(formatter: "HH点mm分ss秒SSS毫秒")) 👑 \(items)") }


class ToolsLibrary: NSObject {

    
    /// 验证邮箱是否正确
    ///
    /// - Parameter email: 邮箱
    /// - Returns: bool值
    class func validateEmail(email:String) -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        let emailText:NSPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailText.evaluate(with:email)
    }
    
    
    /// 验证手机号
    ///
    /// - Parameter phoneNum: 手机号
    /// - Returns: bool值
    class func validatePhoneNum(phoneNum:String) ->Bool {
        let phoneRegex = "^((13[0-9])|(15[^4,\\D])|(18[0,0-9]))\\d{8}$"
        let phoneText:NSPredicate = NSPredicate(format: "SELF MATCHES %@", phoneRegex)
        return phoneText.evaluate(with:phoneNum)
    }
    
    
    /// 验证身份证号
    ///
    /// - Parameter idCard: 身份证号
    /// - Returns: bool值
    class func validateIDCard(idCard:String) ->Bool {
        let cardRegex = "^(\\d{14}|\\d{17})(\\d|[xX])$"
        let cardText:NSPredicate = NSPredicate(format: "SELF MATCHES %@", cardRegex)
        return cardText.evaluate(with:idCard)
    }
    
    
}












