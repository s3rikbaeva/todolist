//
//  ToDoListViewVIewModel.swift
//  ToDoList
//
//  Created by Аружан Серикбаева on 21.05.2024.
//

import Foundation
import FirebaseFirestore

// ViewModel for list of items view
// Primary lab
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String){
        self.userId = userId
    }
    
    /// Delete to do list item
    /// - Parameter id: Item id to delete
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
