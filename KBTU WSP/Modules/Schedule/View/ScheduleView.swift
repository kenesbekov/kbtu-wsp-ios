//
//  ScheduleView.swift
//  KBTU WSP
//
//  Created by Arman Sarvadin on 11/12/2022.
//  Copyright © 2022 TEAM WSP. All rights reserved.
//

import SwiftUI

fileprivate enum ScheduleMocks {
    static let schedules: [Schedule] = {
        var array: [Schedule] = []
        for i in 0...10 {
            let schedule = Schedule(
                id: i,
                lessonKind: .lecture,
                timeSection: (Date(), Date()),
                name: "Процесс инжиниринга программнного обеспечения",
                teacherName: "Алдамуратов Ж.У",
                classroom: 380
            )
            array.append(schedule)
        }
        return array
    }()
}

struct ScheduleView: View {
    @ObservedObject var viewModel: ScheduleViewModel

    init(viewModel: ScheduleViewModel) {
        viewModel.configure(with: ScheduleMocks.schedules)
        self.viewModel = viewModel
    }

    var body: some View {
        ScrollView {
            ForEach(viewModel.schedules) { schedule in
                ScheduleRowView(viewModel: ScheduleRowViewModel(schedule: schedule))
            }
        }
        .toolbar {
             Button {
             } label: {
                 Image(systemName: "bell.badge")
             }
         }
         .scrollIndicators(.hidden)
    }
}

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ScheduleView(viewModel: ScheduleViewModel())
        }
    }
}
