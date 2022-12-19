//
//  Schedule.swift
//  KBTU WSP
//
//  Created by Adam on 18.12.2022.
//

import Foundation

struct Schedule: Identifiable {
    let id: Int
    let lessonKind: LessonKind
    let timeSection: (Date, Date)
    let name: String
    let teacherName: String
    let classroom: Int
}

extension Schedule {
    enum LessonKind {
        case lecture
        case laborotory
        case practice
    }
}
