//
//  Notification.swift
//  KBTU WSP
//
//  Created by Adam on 19.12.2022.
//

import Foundation

struct Notification: Identifiable {
    let id: Int
    let kind: Kind
    let message: String
    let postDate: Date
}

extension Notification {
    enum Kind {
        case news
        case attendance
        case schedule
        case journal
    }
}
