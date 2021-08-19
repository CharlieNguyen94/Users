//
//  MoreInfoConfigurator.swift
//  Users
//
//  Created by Charlie Nguyen on 19/08/2021.
//

import Foundation

final class MoreInfoConfigurator {
    
    static func configureMoreInfoView(with user: User) -> MoreInfoView {
        let viewModel = MoreInfoViewModel(user: user)
        return MoreInfoView(viewModel: viewModel)
    }
}
