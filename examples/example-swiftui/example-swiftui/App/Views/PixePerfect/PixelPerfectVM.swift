//
//  PixelPerfectVM.swift
//  example-swiftui
//
//  Created by Ifeanyi Onuoha on 16/04/2024.
//

import Foundation
import RiveRuntime


@Observable
class PixelPerfectVM: RiveViewModel {
    init() {
        super.init(
            fileName: Constants.riveAsset,
            fit: .cover,
            artboardName: Constants.pixelPerfectionView
        )
    }
    
    // Subscribe to Rive events and this delegate will be invoked
    @objc func onRiveEventReceived(onRiveEvent riveEvent: RiveEvent) {
        switch riveEvent.name() {
        case "next_tapped":
            Router.shared.push(.composable)
        default:
            print("NOT IMPLEMENTED: \(riveEvent.name())")
        }
    }
}
