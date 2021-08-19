//
//  UserDetailRouter.swift
//  Users
//
//  Created by Charlie Nguyen on 19/08/2021.
//

import Foundation
import SwiftUI

final class UserDetailRouter {
    
    public static func destinationForMoreInfoAction(user: User) -> some View {
        return MoreInfoConfigurator.configureMoreInfoView(with: user)
    }
}
