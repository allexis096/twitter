//
//  ProfileDataFormViewViewModel.swift
//  twitter
//
//  Created by allexis figueiredo on 31/10/22.
//

import Foundation
import Combine

final class ProfileDataFormViewViewModel: ObservableObject {
    @Published var displayName: String?
    @Published var username: String?
    @Published var bio: String?
    @Published var avatarPath: String?
}
