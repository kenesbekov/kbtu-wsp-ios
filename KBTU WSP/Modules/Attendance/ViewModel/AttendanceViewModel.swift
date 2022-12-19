//
//  AttendanceViewModel.swift
//  KBTU WSP
//
//  Created by Arman Sarvadin on 11/12/2022.
//  Copyright © 2022 TEAM WSP. All rights reserved.
//

import Combine
import Foundation

final class AttendanceViewModel: ObservableObject {
    @Published private(set) var attendance: [Attendance] = []

    required init() {

    }

    func configure(with attendance: [Attendance]) {
        self.attendance = attendance
    }

    // MARK: - AttendanceViewOutput methods
    func didLoad() {
        
    }
}

// MARK: - AttendanceModuleInput methods
extension AttendanceViewModel: AttendanceModuleInput {
	func configure(data: AttendanceConfigData) {

  }
}
