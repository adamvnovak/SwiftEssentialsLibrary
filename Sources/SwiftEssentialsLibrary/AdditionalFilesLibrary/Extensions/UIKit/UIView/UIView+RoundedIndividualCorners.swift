//
//  UIView+RoundedIndividualCorners.swift
//  twotwotwo-ios
//
//  Created by Adam Novak on 5/31/23
//

import Foundation
import UIKit

public extension UIView {
    
    //This function requires the UIView to already have the proper frame (not a .zero initialized frame)
   func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
        layer.cornerCurve = .continuous
    }
}
