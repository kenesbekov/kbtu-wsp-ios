//
//  NotificationsModuleInput.swift
//  KBTU WSP
//
//  Created by Abdurakhim Kenesbekov on 19/12/2022.
//  Copyright © 2022 TEAM WSP. All rights reserved.
//

/// Adapter struct for Notifications initial configuration through NotificationsModuleInput
struct NotificationsConfigData {

}

/// Protocol with public methods to configure Notifications from its parent module (usually implemented by this module's ViewModel)
protocol NotificationsModuleInput: AnyObject {
	/// public configuration method for parent modules (add configurating parameters)
    func configure(data: NotificationsConfigData)
}
