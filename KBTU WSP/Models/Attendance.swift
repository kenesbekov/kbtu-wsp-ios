//
//  Attendance.swift
//  KBTU WSP
//
//  Created by Adam on 18.12.2022.
//

import Foundation

struct Attendance: Identifiable {
    let id: Int
    let name: String
    let teacherName: String
    let lecturePart: String
    let openTime: Int
}
