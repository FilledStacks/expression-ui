//
//  BaseExpressionView.swift
//
//
//  Created by Ifeanyi Onuoha on 10/04/2024.
//

import SwiftUI

public struct BaseExpressionView: View {
    var fileName: String
    var artboardName: String?
    var onEvent: (StateEvent) -> Void
    
    @StateObject var viewModel: BaseExpressionVM
    
    public init(fileName: String, artboardName: String? = nil, onEvent: @escaping (StateEvent) -> Void) {
        self.fileName = fileName
        self.artboardName = artboardName
        self.onEvent = onEvent
        
        let initial = BaseExpressionVM(
            fileName: fileName,
            artboardName: artboardName,
            onEvent: onEvent
        )
        _viewModel = StateObject(wrappedValue: initial)
    }
    
    public var body: some View {
        VStack {
            viewModel.view()
        }
        .ignoresSafeArea()
    }
}

