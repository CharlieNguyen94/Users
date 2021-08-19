//
//  UserPictureService.swift
//  Users
//
//  Created by Charlie Nguyen on 19/08/2021.
//

import Foundation
import Combine

protocol UserPictureServiceProtocol: AnyObject {
    
    var networker: NetworkerProtocol { get }
    
    func getUserAvatarData(urlString: String) -> AnyPublisher<Data, Error>
}

/// Service to obtain a specific user's picture.
final class UserPictureService: UserPictureServiceProtocol {
    let networker: NetworkerProtocol
    
    init(networker: NetworkerProtocol = Networker()) {
        self.networker = networker
    }
    
    enum UserPictureError: Error {
        case dataInvalid
    }
    
    func getUserAvatarData(urlString: String) -> AnyPublisher<Data, Error> {
        guard let url = URL(string: urlString) else {
            return Fail<Data, Error>(error: NetworkError.invalidURL).eraseToAnyPublisher()
        }
        
        return networker.getData(url: url, headers: [:])
            .mapError { _ in UserPictureError.dataInvalid }
            .eraseToAnyPublisher()
    }
}
