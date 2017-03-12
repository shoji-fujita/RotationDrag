//
//  ViewController.swift
//  RotationDrag
//
//  Created by shoji on 2017/03/12.
//  Copyright © 2017年 shoji fujita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var targetView: UIView!
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else {
            return
        }
        let location = touch.location(in: self.view)
        let prevLocation = touch.previousLocation(in: self.view)
        
        let centerPoint = CGPoint(x: view.frame.width/2, y: view.frame.height/2)
        
        let diffAngle = centerPoint.angle(point: location) - centerPoint.angle(point: prevLocation)
        let nextAngle = targetView.angle() + diffAngle
        
        targetView.transform = CGAffineTransform(rotationAngle: nextAngle.toRadian())
    }

}
