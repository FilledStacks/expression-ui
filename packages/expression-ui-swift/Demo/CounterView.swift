//
//  CounterView.swift
//  Demo
//
//  Created by Ifeanyi Onuoha on 11/04/2024.
//

import SwiftUI
import ExpressionUI

struct CounterView: View {
    var body: some View {
        BaseExpressionView(fileName: "counter") { event in
            switch event.name {
                // implement get/set text
            default:
                print("NOT IMPLEMENTED: \(event.name)")
            }
        }
    }
}

#Preview {
    CounterView()
}
