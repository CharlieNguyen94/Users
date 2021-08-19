//
//  UsersService.swift
//  Users
//
//  Created by Charlie Nguyen on 19/08/2021.
//

import Foundation
import Combine

protocol UsersServiceProtocol: AnyObject {
    var networker: NetworkerProtocol { get }
    
    func getUsers() -> AnyPublisher<Users, Error>
    func getUsers(count: Int) -> AnyPublisher<Users, Error>
    func getUser(id: String) -> AnyPublisher<User, Error>
}

/// Service to obtain array of users and a specific user with provided id.
final class UsersService: UsersServiceProtocol {
    
    let networker: NetworkerProtocol
    
    init(networker: NetworkerProtocol = Networker()) {
        self.networker = networker
    }
    
    func getUsers() -> AnyPublisher<Users, Error> {
        let endpoint = Endpoint.users
        
        return networker.get(type: Users.self,
                             url: endpoint.url,
                             headers: endpoint.headers)
    }
    
    func getUsers(count: Int) -> AnyPublisher<Users, Error> {
        let endpoint = Endpoint.users(count: count)
        
        return networker.get(type: Users.self,
                             url: endpoint.url,
                             headers: endpoint.headers)
    }
    
    func getUser(id: String) -> AnyPublisher<User, Error> {
        let endpoint = Endpoint.user(id: id)
        
        return networker.get(type: User.self,
                             url: endpoint.url,
                             headers: endpoint.headers)
    }
}
