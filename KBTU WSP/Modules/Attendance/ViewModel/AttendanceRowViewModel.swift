//
//  AttendanceRowViewModel.swift
//  KBTU WSP
//
//  Created by Adam on 18.12.2022.
//

import Foundation

final class AttendanceRowViewModel {
    var name: String {
        attendance.name
    }

    var teacherName: String {
        attendance.teacherName
    }

    var lecturePart: String {
        attendance.lecturePart
    }

    var openTime: String {
        "Осталось \(attendance.openTime) мин."
    }

    private let attendance: Attendance

    init(attendance: Attendance) {
        self.attendance = attendance
    }
}
