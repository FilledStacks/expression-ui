//
//  BaseExpressionVM.swift
//
//
//  Created by Ifeanyi Onuoha on 10/04/2024.
//

import Foundation
import RiveRuntime

public class BaseExpressionVM: RiveViewModel {
    var fileName: String
    var artboardName: String?
    var onEvent: (StateEvent) -> Void
    
    init(
        fileName: String,
        artboardName: String? = nil,
        onEvent: @escaping (StateEvent) -> Void
    ) {
        self.fileName = fileName
        self.artboardName = artboardName
        self.onEvent = onEvent
        super.init(
            fileName: fileName,
            fit: .cover,
            artboardName: artboardName
        )
    }
    
    // Subscribe to Rive events and this delegate will be invoked
    @objc func onRiveEventReceived(onRiveEvent riveEvent: RiveEvent) {
        onEvent(StateEvent(name: riveEvent.name()))
    }
}

