//
//  ToDoListSingleItemViewViewModel.swift
//  tasks
//
//  Created by Sachi Kelkar on 7/23/24.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation

//View Model for single to do list item view (each row in items list)
class ToDoListSingleItemViewViewModel: ObservableObject {
    init() {}
    
    func toggleIsDone(item: ToDoListItem) {
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("toDos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
        
    }
}
