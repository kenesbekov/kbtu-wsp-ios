//
//  ScheduleRowView.swift
//  KBTU WSP
//
//  Created by Adam on 18.12.2022.
//

import SwiftUI

struct ScheduleRowView: View {
    var viewModel: ScheduleRowViewModel

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                LessonView(
                    backgroundColor: viewModel.lessonBackgroundColor,
                    title: viewModel.lessonTitle
                )
                .foregroundColor(.primary)
                Spacer()
                Text(viewModel.timeSection)
            }
            .padding(EdgeInsets(top: 8, leading: 12, bottom: 0, trailing: 8))
            VStack(alignment: .leading, spacing: 4) {
                Text(viewModel.name)
                    .font(.headline)
                    .foregroundColor(.primary)
                Text(viewModel.teacherName)
                Text(viewModel.classroom)
            }
            .padding(EdgeInsets(top: 0, leading: 12, bottom: 8, trailing: 12))
        }
        .background(.tertiary.opacity(0.4))
        .cornerRadius(14)
        .foregroundColor(.secondary)
        .padding(.horizontal, 16)
    }
}

extension ScheduleRowView {
    struct LessonView: View {
        var backgroundColor: Color
        var title: String

        var body: some View {
            ZStack {
                backgroundColor
                    .cornerRadius(14)
                Text(title)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(
                        EdgeInsets(
                            top: 4,
                            leading: 12,
                            bottom: 4,
                            trailing: 12
                        )
                    )
            }
            .frame(width: 90)
        }
    }
}
