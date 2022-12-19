//
//  ScheduleRowViewModel.swift
//  KBTU WSP
//
//  Created by Adam on 18.12.2022.
//

import Foundation
import SwiftUI

final class ScheduleRowViewModel {
    var lessonBackgroundColor: Color {
        switch schedule.lessonKind {
        case .lecture:
            return .blue
        case .laborotory:
            return .green
        case .practice:
            return .red
        }
    }

    var lessonTitle: String {
        switch schedule.lessonKind {
        case .lecture:
            return "Лекция"
        case .laborotory:
            return "Лабораторная"
        case .practice:
            return "Практическая работа"
        }
    }
    
    var timeSection: String {
        "8:00 - 9:00"
    }
    
    var name: String {
        schedule.name
    }
    
    var teacherName: String {
        schedule.teacherName
    }
    
    var classroom: String {
        "\(schedule.classroom) аудитория"
    }

    private let schedule: Schedule

    init(schedule: Schedule) {
        self.schedule = schedule
    }
}
