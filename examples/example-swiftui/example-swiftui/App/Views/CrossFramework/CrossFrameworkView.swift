//
//  CrossFrameworkView.swift
//  example-swiftui
//
//  Created by Ifeanyi Onuoha on 16/04/2024.
//

import SwiftUI

struct CrossFrameworkView: View {
    @Environment(CrossFrameworkVM.self) private var viewModel
    
    var body: some View {
        VStack {
            viewModel.view()
        }
        .navigationBarBackButtonHidden(true)
        .ignoresSafeArea()
    }
}
