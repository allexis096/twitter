//
//  AuthManager.swift
//  twitter
//
//  Created by allexis figueiredo on 10/10/22.
//

import Foundation
import FirebaseAuth
import FirebaseAuthCombineSwift
import Combine

class AuthManager {
    static let shared = AuthManager()
    
    func registerUser(with email: String, password: String) -> AnyPublisher<User, Error> {
        return Auth.auth().createUser(withEmail: email, password: password)
            .map(\.user)
            .eraseToAnyPublisher()
    }
}
