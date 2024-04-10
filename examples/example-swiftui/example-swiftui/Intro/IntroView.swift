//
//  IntroView.swift
//  example-swiftui
//
//  Created by Ifeanyi Onuoha on 09/04/2024.
//

import SwiftUI

struct IntroView: View {
    @Environment(Router.self) private var router
    @Environment(IntroVM.self) private var viewModel
    
    var body: some View {
        @Bindable var router = router
        NavigationStack(path: $router.routes) {
            VStack {
                viewModel.view()
            }
            .onAppear {
                if !viewModel.isPlaying {
                    viewModel.stop()
                    viewModel.play()
                }
            }
            .ignoresSafeArea()
            .navigationDestination(for: Screen.self, destination: {screen in
                switch screen {
                case .intro:
                    IntroView()
                case .counter:
                    CounterView()
                }
            })
        }
    }
}
