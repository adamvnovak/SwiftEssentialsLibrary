//
//  ShouldSwipe.swift
//  twotwotwo-ios
//
//  Created by Adam Novak on 2023/08/01.
//

import Foundation

public func shouldSwipeUp(_ translationY: CGFloat, _ velocityY: CGFloat) -> Bool {
    velocityY < 0 || (velocityY <= 0 && translationY < -200)
}

public func shouldSwipeDown(_ translationY: CGFloat, _ velocityY: CGFloat) -> Bool {
    velocityY > 0 || (velocityY >= 0 && translationY > 200)
}

public func shouldSwipeRight(_ translationX: CGFloat, _ velocityX: CGFloat) -> Bool {
    velocityX > 0 || (velocityX >= 0 && translationX > 200)
}

public func shouldSwipeLeft(_ translationX: CGFloat, _ velocityX: CGFloat) -> Bool {
    velocityX < 0 || (velocityX <= 0 && translationX < -200)
}
