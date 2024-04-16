//
//  StartUpVM.swift
//  example-swiftui
//
//  Created by Ifeanyi Onuoha on 09/04/2024.
//

import Foundation
import ExpressionUI


@Observable
class StartUpVM {
    // Subscribe to Rive events and this delegate will be invoked
    func onStateEventReceived(onEvent event: StateEvent) {
        switch event.name {
        case "begin_experience":
            Router.shared.push(.crossFramework)
        default:
            print("NOT IMPLEMENTED: \(event.name)")
        }
    }
}
