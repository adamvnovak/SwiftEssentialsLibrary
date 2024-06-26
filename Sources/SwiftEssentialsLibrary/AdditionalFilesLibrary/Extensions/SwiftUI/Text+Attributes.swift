//
//  Text+Attributes.swift
//  twotwotwo-ios
//
//  Created by Adam Novak on 1/24/24.
//

import SwiftUI

/// extension to make applying AttributedString even easier
public extension Text {
    init(_ string: String, configure: ((inout AttributedString) -> Void)) {
        var attributedString = AttributedString(string) /// create an `AttributedString`
        configure(&attributedString) /// configure using the closure
        self.init(attributedString) /// initialize a `Text`
    }
}
