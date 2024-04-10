//
//  Router.swift
//  example-swiftui
//
//  Created by Ifeanyi Onuoha on 09/04/2024.
//

import Foundation

enum Screen {
    case intro
    case counter
}

@Observable
final class Router {
    static let shared = Router()
    var routes = [Screen]()
    
    func push(_ screen: Screen) {
        routes.append(screen)
    }
}
