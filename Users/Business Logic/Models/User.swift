//
//  User.swift
//  Users
//
//  Created by Charlie Nguyen on 19/08/2021.
//

import Foundation

struct User: Codable, Identifiable {
    let id: String?
    let title: String?
    let firstName: String
    let lastName: String
//    let email: String
    let dateOfBirth: String?
    let registerDate: String?
    let phone: String?
    let picture: String?
}

extension User {
    static func fakeUser() -> Self {
        return User(id: "123",
                    title: "Test",
                    firstName: "Charlie",
                    lastName: "Nguyen",
//                    email: "test@gmail.com",
                    dateOfBirth: "31/12/1994",
                    registerDate: "1/1/2020",
                    phone: "+123456",
                    picture: nil)
    }
}
