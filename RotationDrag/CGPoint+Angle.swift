//
//  CGPoint+Angle.swift
//  RotationDrag
//
//  Created by shoji on 2017/03/12.
//  Copyright © 2017年 shoji fujita. All rights reserved.
//
// 2点から角度を取得する

import UIKit

extension CGPoint {
    
    // 基準点(self)からの角度を取得する
    func angle(point: CGPoint) -> CGFloat {
        var r = atan2(point.y - y, point.x - x)
        if r < 0 {
            r = r + CGFloat(2 * M_PI)
        }
        return r.toAngle()
    }
    
}
