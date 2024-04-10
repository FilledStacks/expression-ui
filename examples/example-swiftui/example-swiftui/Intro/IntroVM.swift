//
//  IntroVM.swift
//  example-swiftui
//
//  Created by Ifeanyi Onuoha on 09/04/2024.
//

import Foundation
import RiveRuntime


@Observable
class IntroVM: RiveViewModel {
    init() {
        super.init(fileName: "counter", fit: .cover, artboardName: "intro-screen")
    }
    
    // Subscribe to Rive events and this delegate will be invoked
    @objc func onRiveEventReceived(onRiveEvent riveEvent: RiveEvent) {
        switch riveEvent.name() {
        case "begin_experience":
            Router.shared.push(.counter)
        default:
            print("NOT IMPLEMENTED: \(riveEvent.name())")
        }
    }
}
