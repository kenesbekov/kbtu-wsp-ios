//
//  NotificationsView.swift
//  KBTU WSP
//
//  Created by Abdurakhim Kenesbekov on 19/12/2022.
//  Copyright © 2022 TEAM WSP. All rights reserved.
//

import SwiftUI

fileprivate enum NotificationsMocks {
    static let notifications: [Notification] = {
        var array: [Notification] = []
        for i in 0..<10 {
            let notification = Notification(
                id: 1,
                kind: .news,
                message: "Here’s Inform you about the transfer on october 21 from offline to online format of the following...",
                postDate: Date()
            )
            array.append(notification)
        }
        return array
    }()
}

struct NotificationsView: View {
    @ObservedObject var viewModel: NotificationsViewModel

    init(viewModel: NotificationsViewModel) {
        viewModel.configure(with: NotificationsMocks.notifications)
        self.viewModel = viewModel
    }

    var body: some View {
        ScrollView {
            VStack(spacing: 12) {
                ForEach(viewModel.notifications) { notification in
                    NotificationsRowView(viewModel: NotificationsRowViewModel(notification: notification))
                }
            }
        }
        .navigationTitle("Уведомления")
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NotificationsView(viewModel: NotificationsViewModel())
        }
    }
}
