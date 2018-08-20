//
//  RequestURL.swift
//  Travel
//
//  Created by 刘俊奇 on 2018/3/28.
//  Copyright © 2018年 刘俊奇. All rights reserved.
//

import UIKit

private let HomePageURL = RequestURL()

class RequestURL: NSObject {
    class var manager : RequestURL {
        return HomePageURL
    }
}

extension RequestURL {
    func getLogin() -> String {
        return ""
    }
}











