//
//  Router.swift
//  example-swiftui
//
//  Created by Ifeanyi Onuoha on 09/04/2024.
//

import Foundation

@Observable
final class Router {
    static let shared = Router()
    var routes: [Route] = []
    
    func push(_ route: Route) {
        routes.append(route)
    }
}
