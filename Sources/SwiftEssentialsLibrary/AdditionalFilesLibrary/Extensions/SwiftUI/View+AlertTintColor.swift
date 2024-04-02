//
//  View+AlertTintColor.swift
//  twotwotwo-ios
//
//  Created by Adam Novak on 2023/08/03.
//

import SwiftUI

struct AlertTintColor: ViewModifier {
    var color: Color
    
    func body(content: Content) -> some View {
        content
            .onAppear {
                UIView.appearance(whenContainedInInstancesOf: [UIAlertController.self]).tintColor = .systemBlue
            }
   }
}

extension View {
    func alertTintColor(_ color: Color) -> some View{
       self.modifier(AlertTintColor(color: color))
   }
}
