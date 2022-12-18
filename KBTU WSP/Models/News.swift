//
//  News.swift
//  KBTU WSP
//
//  Created by Adam on 17.12.2022.
//

import Foundation

struct News: Identifiable {
    let id: Int
    let title: String
    let postDate: Date
    let comments: Int
    let newsSeen: Bool
}
