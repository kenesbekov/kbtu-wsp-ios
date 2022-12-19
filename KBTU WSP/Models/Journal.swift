//
//  Journal.swift
//  KBTU WSP
//
//  Created by Adam on 18.12.2022.
//

import Foundation

struct Journal: Identifiable {
    let id: Int
    let name: String
    let date: Date
    let status: Status
    let points: Double
}

extension Journal {
    enum Status {
        case present
        case absent
    }
}
