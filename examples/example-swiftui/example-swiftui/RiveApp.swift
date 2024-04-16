//
//  RiveApp.swift
//  example-swiftui
//
//  Created by Ifeanyi Onuoha on 09/04/2024.
//

import SwiftUI

@main
struct RiveApp: App {
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
