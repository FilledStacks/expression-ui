//
//  Routes.swift
//  example-swiftui
//
//  Created by Ifeanyi Onuoha on 16/04/2024.
//

import SwiftUI

enum Route {
    case startUp
    case crossFramework
    case devFriendly
    case pixelPerfect
    case composable
}

extension Route: View {
    var body: some View {
        switch self {
        case .startUp:
            StartUpView()
        case .crossFramework:
            CrossFrameworkView()
        case .devFriendly:
            DevFriendlyView()
        case .pixelPerfect:
            PixelPerfectView()
        case .composable:
            ComposableView()
        }
    }
}
