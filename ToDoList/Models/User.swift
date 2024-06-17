//
//  User.swift
//  ToDoList
//
//  Created by Аружан Серикбаева on 21.05.2024.
//

import Foundation


struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
