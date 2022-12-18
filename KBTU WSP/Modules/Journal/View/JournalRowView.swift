//
//  JournalRowView.swift
//  KBTU WSP
//
//  Created by Adam on 18.12.2022.
//

import SwiftUI

struct JournalRowView: View {
    var viewModel: JournalRowViewModel

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text(viewModel.name)
                    .font(.headline)
                Spacer()
                PointsView(title: viewModel.points)
            }
            .padding(.horizontal, 16)
            .padding(.top, 8)
            HStack(spacing: 4) {
                Image(systemName: "clock.fill")
                Text(viewModel.date)
                if let image = viewModel.statusImage {
                    image.colorMultiply(.red).foregroundColor(.white)
                }
                Text(viewModel.status)
            }
            .foregroundColor(.secondary)
            .padding(.horizontal, 16)
            .padding(.bottom, 8)
        }
        .background(.tertiary.opacity(0.4))
        .cornerRadius(14)
        .padding(.horizontal, 16)
    }
}

extension JournalRowView {
    struct PointsView: View {
        var title: String

        var body: some View {
            ZStack {
                Color(.blue)
                    .cornerRadius(28)
                Text(title)
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
            }
            .frame(width: 60)
        }
    }
}
