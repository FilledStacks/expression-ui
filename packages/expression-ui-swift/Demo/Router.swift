//
//  Router.swift
//  Demo
//
//  Created by Ifeanyi Onuoha on 11/04/2024.
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
