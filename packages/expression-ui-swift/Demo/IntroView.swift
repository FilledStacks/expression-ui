//
//  ContentView.swift
//  Demo
//
//  Created by Ifeanyi Onuoha on 11/04/2024.
//

import SwiftUI
import ExpressionUI

struct IntroView: View {
    @Environment(Router.self) private var router
    
    var body: some View {
        @Bindable var router = router
        NavigationStack(path: $router.routes) {
            BaseExpressionView(fileName: "counter", artboardName: "intro-screen") { event in
                switch event.name {
                case "begin_experience":
                    router.push(.counter)
                default:
                    print("NOT IMPLEMENTED: \(event.name)")
                }
            }
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

#Preview {
    IntroView()
}
