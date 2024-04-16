//
//  ComposableVM.swift
//  example-swiftui
//
//  Created by Ifeanyi Onuoha on 16/04/2024.
//

import Foundation
import RiveRuntime


@Observable
class ComposableVM: RiveViewModel {
    init() {
        super.init(
            fileName: Constants.riveAsset,
            fit: .cover,
            artboardName: Constants.composableView
        )
    }
    
    // Subscribe to Rive events and this delegate will be invoked
    @objc func onRiveEventReceived(onRiveEvent riveEvent: RiveEvent) {
        switch riveEvent.name() {
        default:
            print("NOT IMPLEMENTED: \(riveEvent.name())")
        }
    }
}
