//
//  ScheduleModuleInput.swift
//  KBTU WSP
//
//  Created by Arman Sarvadin on 11/12/2022.
//  Copyright © 2022 TEAM WSP. All rights reserved.
//

/// Adapter struct for Schedule initial configuration through ScheduleModuleInput
struct ScheduleConfigData {

}

/// Protocol with public methods to configure Schedule from its parent module (usually implemented by this module's ViewModel)
protocol ScheduleModuleInput: AnyObject {
	/// public configuration method for parent modules (add configurating parameters)
    func configure(data: ScheduleConfigData)
}
