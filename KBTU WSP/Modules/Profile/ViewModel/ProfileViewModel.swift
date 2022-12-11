//
//  ProfileViewModel.swift
//  KBTU WSP
//
//  Created by Arman Sarvadin on 11/12/2022.
//  Copyright © 2022 TEAM WSP. All rights reserved.
//

import Combine
import Foundation

final class ProfileViewModel: ObservableObject {
    required init() {

    }

    // MARK: - ProfileViewOutput methods
    func didLoad() {
        
    }
}

// MARK: - ProfileModuleInput methods
extension ProfileViewModel: ProfileModuleInput {
	func configure(data: ProfileConfigData) {

  }
}
