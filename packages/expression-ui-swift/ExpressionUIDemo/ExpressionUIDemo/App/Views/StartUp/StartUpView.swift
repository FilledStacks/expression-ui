//
//  StartUpView.swift
//  example-swiftui
//
//  Created by Ifeanyi Onuoha on 09/04/2024.
//

import SwiftUI
import ExpressionUI

struct StartUpView: View {
    @Environment(Router.self) private var router
    @Environment(StartUpVM.self) private var viewModel
    
    var body: some View {
        @Bindable var router = router
        NavigationStack(path: $router.routes) {
            BaseExpressionView(
                fileName: Constants.riveAsset,
                artboardName: Constants.introView,
                onEvent: viewModel.onStateEventReceived
            )
            .navigationDestination(for: Route.self, destination: { $0 })
        }
    }
}
