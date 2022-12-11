//
//  ProfileViewModel.swift
//  KBTU WSP
//
//  Created by Arman Sarvadin on 11/12/2022.
//  Copyright © 2022 TEAM WSP. All rights reserved.
//

import Combine
import Foundation
import UIKit

final class ProfileViewModel: ObservableObject {
    required init() {
        
    }
    
    // MARK: - ProfileViewOutput methods
    func didLoad() {
        
    }
    
    func changeAppearance(isLight: Bool) {
        if isLight {
            UIApplication.shared.keyWindow?.overrideUserInterfaceStyle = .light
        } else {
            UIApplication.shared.keyWindow?.overrideUserInterfaceStyle = .dark
        }
        UserDefaults.standard.set(isLight, forKey: UserDefaultsNames.appAppearance)
    }
}

// MARK: - ProfileModuleInput methods
extension ProfileViewModel: ProfileModuleInput {
    func configure(data: ProfileConfigData) {
        
    }
}
