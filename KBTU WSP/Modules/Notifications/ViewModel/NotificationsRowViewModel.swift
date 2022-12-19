//
//  NotificationsRowViewModel.swift
//  KBTU WSP
//
//  Created by Adam on 19.12.2022.
//

import Foundation
import SwiftUI

final class NotificationsRowViewModel {
    var kindImage: Image {
        switch notification.kind {
        case .news:
            return Image(systemName: "house.fill")
        case .attendance:
            return Image(systemName: "clock.arrow.circlepath")
        case .schedule:
            return Image(systemName: "calendar")
        case .journal:
            return Image(systemName: "magazine.fill")
        }
    }

    var kindTitle: String {
        switch notification.kind {
        case .news:
            return "Новости"
        case .attendance:
            return "Посещеаемость"
        case .schedule:
            return "Расписание"
        case .journal:
            return "Журнал"
        }
    }

    var message: String {
        notification.message
    }

    var postDate: String {
        formatDate(from: notification.postDate)
    }

    private func formatDate(from date: Date) -> String {
        let dateFormmater = DateFormatter()
        dateFormmater.dateFormat = "MMMM d, yyyy"
        return dateFormmater.string(from: date)
    }

    private let notification: Notification

    init(notification: Notification) {
        self.notification = notification
    }
}
