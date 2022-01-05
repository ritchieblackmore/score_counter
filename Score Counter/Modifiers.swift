//
//  Modifiers.swift
//  Score Counter
//
//  Created by Mathias Johnsson on 2021-12-12.
//

import SwiftUI

struct ButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title)
            .foregroundColor(.black)
            .background(Color.white)
            .cornerRadius(10)
    }
}
