//
//  CrossFrameworkView.swift
//  example-swiftui
//
//  Created by Ifeanyi Onuoha on 16/04/2024.
//

import SwiftUI
import ExpressionUI

struct CrossFrameworkView: View {
    @Environment(CrossFrameworkVM.self) private var viewModel
    
    var body: some View {
        BaseExpressionView(
            fileName: Constants.riveAsset,
            artboardName: Constants.crossFrameworkView,
            onEvent: viewModel.onStateEventReceived
        )
        .navigationBarBackButtonHidden(true)
    }
}
