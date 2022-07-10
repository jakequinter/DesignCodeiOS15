//
//  PreferenceKeys.swift
//  DesignCodeiOS15
//
//  Created by Jake Quinter on 7/10/22.
//

import SwiftUI

struct ScrollPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
