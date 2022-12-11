//
//  ScheduleViewModel.swift
//  KBTU WSP
//
//  Created by Arman Sarvadin on 11/12/2022.
//  Copyright © 2022 TEAM WSP. All rights reserved.
//

import Combine
import Foundation

final class ScheduleViewModel: ObservableObject {
    required init() {

    }

    // MARK: - ScheduleViewOutput methods
    func didLoad() {
        
    }
}

// MARK: - ScheduleModuleInput methods
extension ScheduleViewModel: ScheduleModuleInput {
	func configure(data: ScheduleConfigData) {

  }
}
