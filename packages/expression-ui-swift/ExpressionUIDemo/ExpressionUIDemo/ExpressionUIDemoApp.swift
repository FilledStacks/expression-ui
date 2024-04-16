//
//  ExpressionUIDemoApp.swift
//  ExpressionUIDemo
//
//  Created by Ifeanyi Onuoha on 11/04/2024.
//

import SwiftUI

@main
struct ExpressionUIDemoApp: App {
    var body: some Scene {
        WindowGroup {
            StartUpView()
                .environment(Router.shared)
                .environment(StartUpVM())
                .environment(CrossFrameworkVM())
                .environment(DevFriendlyVM())
                .environment(PixelPerfectVM())
                .environment(ComposableVM())
        }
    }
}
