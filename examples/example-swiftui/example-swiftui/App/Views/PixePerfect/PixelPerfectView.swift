//
//  PixelPerfectView.swift
//  example-swiftui
//
//  Created by Ifeanyi Onuoha on 16/04/2024.
//

import SwiftUI

struct PixelPerfectView: View {
    @Environment(PixelPerfectVM.self) private var viewModel
    
    var body: some View {
        VStack {
            viewModel.view()
        }
        .ignoresSafeArea()
    }
}
