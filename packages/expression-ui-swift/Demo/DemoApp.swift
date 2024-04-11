//
//  DemoApp.swift
//  Demo
//
//  Created by Ifeanyi Onuoha on 11/04/2024.
//

import SwiftUI

@main
struct DemoApp: App {
    var body: some Scene {
        WindowGroup {
            IntroView()
                .environment(Router())
        }
    }
}
