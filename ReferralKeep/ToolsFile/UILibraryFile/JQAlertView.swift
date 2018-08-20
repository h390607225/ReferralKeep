//
//  JQAlertView.swift
//  ReferralKeep
//
//  Created by LJQ on 2018/8/14.
//  Copyright © 2018年 LJQ. All rights reserved.
//

import UIKit

class JQAlertView: UIView {
    
    /// 系统弹窗(默认1.5s之后自动关闭)
    ///
    /// - Parameters:
    ///   - msg: 弹窗消息
    ///   - vc: 弹出页面
    class func alertTimer(title:String, msg:String, vc:UIViewController) {
        let alertVC = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        vc.present(alertVC, animated: true, completion: nil)
        
        let time: TimeInterval = 1.5
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + time) {
            vc.dismiss(animated: true, completion: nil)
        }
    }
    
    
    /// 系统弹窗(只有确定按钮)
    ///
    /// - Parameters:
    ///   - title: 标题
    ///   - msg: 信息
    ///   - vc: viewController
    ///   - response: 确定点击回调
    class func alertSure(title:String , msg:String, vc:UIViewController, response:@escaping (Any)->()) {
        let alertVC = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        let sureAction = UIAlertAction(title: "Sure", style: .default) { (action) in
            response(action)
        }
        alertVC.addAction(sureAction)
        vc.present(alertVC, animated: true) {
            
        }
    }
    
    
    /// 系统弹窗(含有取消确定)
    ///
    /// - Parameters:
    ///   - title: 标题
    ///   - msg: 信息
    ///   - vc: viewController
    ///   - response: 点击回调
    class func alertCancel(title:String ,msg:String, vc:UIViewController,response:@escaping (Any)->(),cancelResponse:@escaping(Any)->()) {
        let alertVC = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        let sureAction = UIAlertAction(title: "Sure", style: .default) { (action) in
            response(action)
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (cancel) in
            cancelResponse(cancel)
        }
        alertVC.addAction(sureAction)
        alertVC.addAction(cancelAction)
        vc.present(alertVC, animated: true) {
            
        }
    }
    
    
    
    /// 自定义弹窗
    ///
    /// - Parameters:
    ///   - title: 标题
    ///   - msg: 信息
    ///   - vc: viewController
    ///   - response: 确定回调
    ///   - cancelResponse: 取消回调
    class func customAlert(title:String ,msg:String ,vc:UIViewController, response:@escaping(Any)->(),cancelResponse:@escaping(Any)->()) {
//        <#code#>
    }
    
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}


