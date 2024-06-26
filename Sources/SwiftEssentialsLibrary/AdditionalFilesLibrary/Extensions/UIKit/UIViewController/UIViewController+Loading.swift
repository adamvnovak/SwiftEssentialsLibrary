//
//  UIViewController+Loading.swift
//  twotwotwo-ios
//
//  Created by Adam Novak on 5/31/23
//

import UIKit

public extension UIViewController {
    
    func initActivityIndicator(onView loadingView: UIView) -> UIActivityIndicatorView {
        let indicator = UIActivityIndicatorView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        indicator.style = UIActivityIndicatorView.Style.medium
        indicator.center = CGPoint(x: loadingView.bounds.size.width*0.5,y: loadingView.bounds.size.height*0.4)
        indicator.hidesWhenStopped = true
        loadingView.addSubview(indicator)
        indicator.startAnimating()
        return indicator
    }
}
