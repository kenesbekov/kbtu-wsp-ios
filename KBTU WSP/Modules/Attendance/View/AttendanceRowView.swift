//
//  AttendanceRowView.swift
//  KBTU WSP
//
//  Created by Adam on 18.12.2022.
//

import SwiftUI

struct AttendanceRowView: View {
    var viewModel: AttendanceRowViewModel

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(viewModel.name)
                .font(.headline)
                .foregroundColor(.primary)
                .padding(.horizontal, 16)
                .padding(.top, 8)
            Text(viewModel.teacherName)
                .foregroundColor(.secondary)
                .padding(.horizontal, 16)
            Text(viewModel.lecturePart)
                .foregroundColor(.secondary)
                .padding(.horizontal, 16)
            HStack {
                Text(viewModel.openTime)
                    .font(.headline)
                Spacer()
                Button {} label: {
                    Text("Отметиться")
                }
                .buttonStyle(.bordered)
            }
            .padding(.horizontal, 16)
            .padding(.bottom, 8)
        }
        .background(.blue.opacity(0.14))
        .cornerRadius(14)
        .padding(.horizontal, 16)
    }
}
