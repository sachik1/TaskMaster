//
//  ToDoListItemsView.swift
//  tasks
//
//  Created by Sachi Kelkar on 7/23/24.
//

import FirebaseFirestoreSwift
import SwiftUI

struct ToDoListItemsView: View {
    @StateObject var viewModel:  ToDoListItemsViewViewModel
    @FirestoreQuery var items: [ToDoListItem]
    
    init(userId: String) {
        
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/toDos")
        
        self._viewModel = StateObject(wrappedValue: ToDoListItemsViewViewModel(userId: userId))
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List(items) {item in
                    ToDoListSingleItemView(item: item)
                        .swipeActions {
                            Button ("Delete") {
                                viewModel.delete(id: item.id)
                            }
                            .tint(.red)
                        }
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("To Do List")
            .toolbarBackground(.red, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        viewModel.showingNewItemView = true
                            }) {
                                Image(systemName: "plus")
                                    .font(.system(size: 25))
                                    .foregroundColor(.white)
                    }
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView) {
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            }
        }
    }
}

#Preview {
    ToDoListItemsView(userId: "p8yLnJywakXGQ9jnYigumk7Owbp1")
}
