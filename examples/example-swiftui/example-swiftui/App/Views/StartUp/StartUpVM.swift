//
//  StartUpVM.swift
//  example-swiftui
//
//  Created by Ifeanyi Onuoha on 09/04/2024.
//

import Foundation
import RiveRuntime


@Observable
class StartUpVM: RiveViewModel {
    init() {
        super.init(
            fileName: Constants.riveAsset,
            fit: .cover,
            artboardName: Constants.introView
        )
    }
    
    // Subscribe to Rive events and this delegate will be invoked
    @objc func onRiveEventReceived(onRiveEvent riveEvent: RiveEvent) {
        switch riveEvent.name() {
        case "begin_experience":
            Router.shared.push(.crossFramework)
        default:
            print("NOT IMPLEMENTED: \(riveEvent.name())")
        }
    }
}
