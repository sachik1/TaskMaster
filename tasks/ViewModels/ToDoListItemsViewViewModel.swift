//
//  ToDoListItemsViewViewModel.swift
//  tasks
//
//  Created by Sachi Kelkar on 7/23/24.
//

import FirebaseFirestore
import Foundation


//View Model for List of Items View
//Primary Tab
class ToDoListItemsViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    
    /// Delete toDo List Item
    /// - Parameter id: item id to delete
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("toDos")
            .document(id)
            .delete()
    }
}
