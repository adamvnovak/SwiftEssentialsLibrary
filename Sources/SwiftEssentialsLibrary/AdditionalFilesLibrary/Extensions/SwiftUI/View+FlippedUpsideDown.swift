//
//  View+FlippedUpsideDown.swift
//  twotwotwo-ios
//
//  Created by Adam Novak on 2023/08/03.
//

import SwiftUI
import Foundation

public struct FlippedUpsideDown: ViewModifier {
    var animated: Bool
    
    public func body(content: Content) -> some View {
        content
            .rotationEffect(.radians(.pi))
            .scaleEffect(x: -1, y: 1, anchor: .center)
            .transaction { transaction in
                transaction.animation = animated ? .easeIn : .none
        }
   }
}

public extension View{
    func flippedUpsideDown(animated: Bool) -> some View{
       self.modifier(FlippedUpsideDown(animated: animated))
   }
}
