//
//  UIView+Angle.swift
//  RotationDrag
//
//  Created by shoji on 2017/03/12.
//  Copyright © 2017年 shoji fujita. All rights reserved.
//
// Viewの角度を取得する

import UIKit

extension UIView {
    
    // 傾きをラジアンで取得する
    func radian() -> CGFloat {
        return atan2(transform.b, transform.a)
    }
    
    // 傾きを角度で取得する
    func angle() -> CGFloat {
        return radian().toAngle()
    }
    
}
