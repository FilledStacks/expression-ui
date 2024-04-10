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
            IntroView()
                .environment(Router.shared)
                .environment(IntroVM())
                .environment(CounterVM())
        }
    }
}
