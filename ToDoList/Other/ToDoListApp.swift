//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Аружан Серикбаева on 20.05.2024.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
