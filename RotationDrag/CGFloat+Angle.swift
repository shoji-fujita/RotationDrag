//
//  CGFloat+Angle.swift
//  RotationDrag
//
//  Created by shoji on 2017/03/12.
//  Copyright © 2017年 shoji fujita. All rights reserved.
//
// 角度の変換

import UIKit

extension CGFloat {
    
    // 角度を°からラジアンに変える
    func toRadian() -> CGFloat {
        return self * CGFloat(M_PI) / 180
    }
    
    // 角度をラジアンから°に変える
    func toAngle() -> CGFloat {
        return self / (CGFloat(M_PI) / 180)
    }
    
}
