//
//  JournalRowViewModel.swift
//  KBTU WSP
//
//  Created by Adam on 18.12.2022.
//

import Foundation
import SwiftUI

final class JournalRowViewModel {
    var name: String {
        journal.name
    }

    var date: String {
        formatDate(from: journal.date)
    }

    var statusImage: Image? {
        switch journal.status {
        case .present:
            return Image(systemName: "person.circle.fill")
        case .absent:
            return Image(systemName: "person.circle.fill")
        }
    }

    var status: String {
        switch journal.status {
        case .present:
            return "Отсутствовал"
        case .absent:
            return "Присутствовал"
        }
    }

    var points: String {
        "\(journal.points) Б"
    }

    private func formatDate(from date: Date) -> String {
        let dateFormmater = DateFormatter()
        dateFormmater.dateFormat = "MMMM d, yyyy"
        return dateFormmater.string(from: date)
    }

    private let journal: Journal

    init(journal: Journal) {
        self.journal = journal
    }
}
