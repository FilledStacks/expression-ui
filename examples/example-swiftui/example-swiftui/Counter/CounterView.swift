//
//  CounterView.swift
//  example-swiftui
//
//  Created by Ifeanyi Onuoha on 09/04/2024.
//

import SwiftUI

struct CounterView: View {
    @Environment(CounterVM.self) private var viewModel
    
    var body: some View {
        VStack {
            viewModel.view()
        }
        .ignoresSafeArea()
    }
}
