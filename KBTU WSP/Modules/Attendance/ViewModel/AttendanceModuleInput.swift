//
//  AttendanceModuleInput.swift
//  KBTU WSP
//
//  Created by Arman Sarvadin on 11/12/2022.
//  Copyright © 2022 TEAM WSP. All rights reserved.
//

/// Adapter struct for Attendance initial configuration through AttendanceModuleInput
struct AttendanceConfigData {

}

/// Protocol with public methods to configure Attendance from its parent module (usually implemented by this module's ViewModel)
protocol AttendanceModuleInput: AnyObject {
	/// public configuration method for parent modules (add configurating parameters)
    func configure(data: AttendanceConfigData)
}
