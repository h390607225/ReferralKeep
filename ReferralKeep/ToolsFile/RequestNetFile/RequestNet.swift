//
//  RequestNet.swift
//  Travel
//
//  Created by 刘俊奇 on 2018/3/27.
//  Copyright © 2018年 刘俊奇. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

let baseUrl:String? = ""


private let RequestDataShareInstance = RequestNet()

class RequestNet: NSObject {
    
    class var shareManager : RequestNet {
        return RequestDataShareInstance
    }
    
    /// post请求
    ///
    /// - Parameters:
    ///   - url: 请求地址
    ///   - paramers: 参数
    ///   - response: 回调数据
    ///   - faliture: 错误信息
    func post_request(url:String,paramers:[String:Any],response:@escaping (Any)->(),faliture:@escaping (Any)->()) {
        let posturl = baseUrl?.appending(url)
        
        Alamofire.request(posturl!, method: .post, parameters: paramers).responseJSON { (responseObject) in
            debugPrint(responseObject)
            switch responseObject.result {
            case .success(let value):
                debugPrint("返回数据",JSON(value))
                let json = JSON(value).dictionaryObject
                UserDefaults.standard.set(json!["token"], forKey: "token")
                response(value)
            case .failure(let error):
                faliture(error)
                debugPrint("************error************/n\(error)")
            }
        }
    }
    
    /// get网络请求
    ///
    /// - Parameters:
    ///   - url: 地址
    ///   - parames: 参数
    ///   - response: 回调
    ///   - faliture: 错误回调
    func get_request(url:String,parames:[String:Any],response:@escaping(Any)->(),faliture:@escaping(Any)->()) {
        Alamofire.request(url, method: .get, parameters: parames).responseJSON { (responseObject) in
            switch responseObject.result {
            case .success(let value):
                response(value)
            case .failure(let error):
                faliture(error)
                debugPrint("************error************/n\(error)")
            }
        }
    }

    
    
    
}







