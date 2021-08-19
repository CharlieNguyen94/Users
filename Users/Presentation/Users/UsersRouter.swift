//
//  UserRouter.swift
//  Users
//
//  Created by Charlie Nguyen on 19/08/2021.
//

import SwiftUI

final class UsersRouter {
    
    public static func destinationForTappedUser(user: User) -> some View {
        return UserDetailConfigurator.configureUserDetailView(with: user)
    }
}
