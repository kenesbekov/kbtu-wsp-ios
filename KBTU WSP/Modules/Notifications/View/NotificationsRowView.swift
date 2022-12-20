//
//  NotificationsRowView.swift
//  KBTU WSP
//
//  Created by Adam on 19.12.2022.
//

import SwiftUI

struct NotificationsRowView: View {
    var viewModel: NotificationsRowViewModel

    var body: some View {
        HStack(spacing: 8) {
            viewModel.kindImage
                .resizable()
                .scaledToFit()
                .frame(height: 32)
                .foregroundColor(.accentColor)
                .padding(.leading, 8)
            VStack(alignment: .leading) {
                HStack(spacing: 4) {
                    Text(viewModel.kindTitle)
                        .font(.headline)
                        .foregroundColor(.primary)
                    Spacer()
                    Text(viewModel.postDate)
                        .foregroundColor(.secondary)
                        .font(.callout)
                }
                Text(viewModel.message)
                    .foregroundColor(.primary)
            }
            .padding(.top, 16)
            .padding(.trailing, 12)
            .padding(.bottom, 16)
        }
        .background(.tertiary.opacity(0.4))
        .cornerRadius(14)
        .padding(.horizontal, 16)
    }
}
