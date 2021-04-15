//
//  SharpImageView2.swift
//  Card
//
//  Created by 王冊 on 2021/4/15.
//

import UIKit

class SharpImageView2: UIImageView {
        
        override func layoutSubviews() {
            super.layoutSubviews()
            let path = UIBezierPath()
            path.move(to: CGPoint(x: 0, y: bounds.height * 0.10))
            path.addLine(to: CGPoint(x: bounds.width, y: 0))
            path.addLine(to: CGPoint(x: bounds.width, y: bounds.height))
            path.addLine(to: CGPoint(x: 0, y: bounds.height))
            path.close()
            
            let shapeLayer = CAShapeLayer()
            shapeLayer.path = path.cgPath
            layer.mask = shapeLayer
        }
    }

