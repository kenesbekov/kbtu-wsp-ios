//
//  ProfileModuleInput.swift
//  KBTU WSP
//
//  Created by Arman Sarvadin on 11/12/2022.
//  Copyright © 2022 TEAM WSP. All rights reserved.
//

/// Adapter struct for Profile initial configuration through ProfileModuleInput
struct ProfileConfigData {

}

/// Protocol with public methods to configure Profile from its parent module (usually implemented by this module's ViewModel)
protocol ProfileModuleInput: AnyObject {
	/// public configuration method for parent modules (add configurating parameters)
    func configure(data: ProfileConfigData)
}
