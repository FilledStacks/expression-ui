//
//  CounterVM.swift
//  example-swiftui
//
//  Created by Ifeanyi Onuoha on 09/04/2024.
//

import Foundation
import RiveRuntime


@Observable
class CounterVM: RiveViewModel {
    init() {
        super.init(fileName: "counter", fit: .cover)
    }

    // Subscribe to Rive events and this delegate will be invoked
    @objc func onRiveEventReceived(onRiveEvent riveEvent: RiveEvent) {
        switch riveEvent.name() {
        case "button_clicked":
            let state = getTextRunValue("Counter") ?? "0"
            let count = 1 + (Int(state) ?? 0)
            try? setTextRunValue("Counter", textValue: "\(count)")
        default:
            print("NOT IMPLEMENTED: \(riveEvent.name())")
        }

    }
}
