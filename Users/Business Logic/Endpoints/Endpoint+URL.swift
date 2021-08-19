//
//  Endpoint+URL.swift
//  Users
//
//  Created by Charlie Nguyen on 19/08/2021.
//

import Foundation

extension Endpoint {
    var url: URL {
        var components = URLComponents()
        components.scheme = "https"
        components.host = "dummyapi.io"
        components.path = "/data/api" + path
        components.queryItems = queryItems
        
        guard let url = components.url else {
            preconditionFailure("Invalid URL components: \(components)")
        }
        
        return url
    }
    
    var headers: [String: Any] {
        return [
            "app-id": "611e41f93222d00fbc79f360"
        ]
    }
    
}
