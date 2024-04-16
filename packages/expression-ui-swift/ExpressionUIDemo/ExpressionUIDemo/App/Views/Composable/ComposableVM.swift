//
//  ComposableVM.swift
//  example-swiftui
//
//  Created by Ifeanyi Onuoha on 16/04/2024.
//

import Foundation
import ExpressionUI


@Observable
class ComposableVM {
    // Subscribe to Rive events and this delegate will be invoked
    func onStateEventReceived(onEvent event: StateEvent) {
        switch event.name {
        default:
            print("NOT IMPLEMENTED: \(event.name)")
        }
    }
}
