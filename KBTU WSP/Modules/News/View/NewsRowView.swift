//
//  NewsRowsView.swift
//  KBTU WSP
//
//  Created by Adam on 17.12.2022.
//

import SwiftUI

struct NewsRowView: View {
    var viewModel: NewsRowViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack(spacing: 8) {
                Text(viewModel.title)
                    .font(.headline)
                    .foregroundColor(viewModel.titleColor)
                Image(systemName: "chevron.right")
            }
            HStack(spacing: 8) {
                HStack(spacing: 4) {
                    Image(systemName: "clock.fill")
                    Text(viewModel.postDate)
                }
                HStack(spacing: 4) {
                    Image(systemName: "message")
                    Text(viewModel.comments)
                }
            }
            .font(.caption)
            .foregroundColor(.secondary)
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 8)
        .background(viewModel.backgroundColor)
        .cornerRadius(14)
    }
}
