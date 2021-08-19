//
//  UsersConfigurator.swift
//  Users
//
//  Created by Charlie Nguyen on 19/08/2021.
//

import Foundation

final class UsersConfigurator {
    
    public static func configureUsersView(with viewModel: UsersViewModel = UsersViewModel()) -> UsersView {
        let usersView = UsersView(viewModel: viewModel)
        return usersView
    }
}
