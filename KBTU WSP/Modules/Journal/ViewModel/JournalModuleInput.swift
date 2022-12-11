//
//  JournalModuleInput.swift
//  KBTU WSP
//
//  Created by Arman Sarvadin on 11/12/2022.
//  Copyright © 2022 TEAM WSP. All rights reserved.
//

/// Adapter struct for Journal initial configuration through JournalModuleInput
struct JournalConfigData {

}

/// Protocol with public methods to configure Journal from its parent module (usually implemented by this module's ViewModel)
protocol JournalModuleInput: AnyObject {
	/// public configuration method for parent modules (add configurating parameters)
    func configure(data: JournalConfigData)
}
