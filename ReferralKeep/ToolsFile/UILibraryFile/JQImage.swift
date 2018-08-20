//
//  JQImage.swift
//  ReferralKeep
//
//  Created by LJQ on 2018/8/16.
//  Copyright © 2018年 LJQ. All rights reserved.
//

import UIKit
import Kingfisher
class JQImage: UIView {

}

extension UIView {
    
    
    /// 左侧
    ///
    /// - Returns:
    func left() -> CGFloat {
        return self.frame.origin.x
    }
    
    /// 右侧
    ///
    /// - Returns:
    func right() -> CGFloat {
        return self.frame.origin.x + self.frame.size.width
    }
    
    /// 顶部
    ///
    /// - Returns:
    func top() -> CGFloat {
        return self.frame.origin.y
    }

    /// 底部
    ///
    /// - Returns:
    func bottom() -> CGFloat {
        return self.frame.size.height + self.frame.origin.y
    }
    
    /// 高度
    ///
    /// - Returns:
    func height() -> CGFloat {
        return self.frame.size.height
    }
    
    /// 宽度
    ///
    /// - Returns:
    func width() -> CGFloat {
        return self.frame.size.width
    }
    
    
    /// 设置View的x值
    ///
    /// - Parameter x:
    func setX(x:CGFloat) {
        self.frame = CGRect(x: x, y: self.top(), width: self.width(), height: self.height())
    }
    
    /// 设置View的y值
    ///
    /// - Parameter y:
    func setY(y:CGFloat) {
        self.frame = CGRect(x: self.left(), y: y, width: self.width(), height: self.height())
    }
    /// 设置View的宽度
    ///
    /// - Parameter width:
    func setWidth(width:CGFloat) {
        self.frame = CGRect(x: self.left(), y: self.top(), width: width, height: self.height())
    }
    /// 设置View的高度
    ///
    /// - Parameter height:
    func setHeight(height:CGFloat) {
        self.frame = CGRect(x: self.left(), y: self.top(), width: self.width(), height: height)
    }
    
    /// 设置View圆角颜色
    ///
    /// - Parameter color: 色值
    func setBorderColor(color:UIColor) {
        self.layer.borderColor = color.cgColor
    }
    
    /// 设置圆角
    ///
    /// - Parameter raidus:
    func setCornerRadius(raidus:CGFloat) {
        self.layer.cornerRadius = raidus
    }
    
    /// 设置圆角宽度
    ///
    /// - Parameter width:
    func setBorderWidth(width:CGFloat) {
        self.layer.borderWidth = width
    }
    
    
}





extension UIImageView {
    
    /// 网络图片请求
    ///
    /// - Parameters:
    ///   - imgURL: 图片地址URL
    ///   - plachoderImg: 占位图
    /// - Returns: 图片
    func imageWitURL(imgURL:String, plachoderImg:String?) -> UIImage {
        let imgURLString = NSURL.fileURL(withPath: imgURL)
        self.kf.setImage(with: ImageResource(downloadURL: imgURLString), placeholder: UIImage(named: plachoderImg!), options: nil, progressBlock: nil, completionHandler: nil)
        return self.image!
    }
}

extension UIButton {
    
}










































