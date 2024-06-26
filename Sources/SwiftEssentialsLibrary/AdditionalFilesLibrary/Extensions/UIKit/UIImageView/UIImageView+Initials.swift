//
//  UIImageView+Initials.swift
//  twotwotwo-ios
//
//  Created by Adam Novak on 5/31/23
//

import UIKit

public extension UIImageView {

    func addInitials(initials: String, font: UIFont, textColor: UIColor, backgroundColor: UIColor? = nil) {
        if let color = backgroundColor {
            image = color.image(.init(width: self.frame.size.width * 2, height: self.frame.size.height * 2))
        }
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: self.bounds.width, height: self.bounds.height))
        label.center = CGPoint(x: self.bounds.width / 2, y: self.bounds.height / 2)
        label.textAlignment = .center
        label.text = initials
        label.font = font
        label.textColor = textColor
        self.addSubview(label)
    }
}
