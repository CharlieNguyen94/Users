//
//  UsersApp.swift
//  Users
//
//  Created by Charlie Nguyen on 19/08/2021.
//

import SwiftUI

@main
struct UsersApp: App {
    var body: some Scene {
        WindowGroup {
            UsersConfigurator.configureUsersView()
        }
    }
}
