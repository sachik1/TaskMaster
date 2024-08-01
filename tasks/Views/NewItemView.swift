//
//  NewItemView.swift
//  tasks
//
//  Created by Sachi Kelkar on 7/23/24.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewViewModel()
    @Binding var newItemPresented: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    //Title
                    TextField("Title", text: $viewModel.title)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    //Due Date
                    DatePicker("Due Date", selection: $viewModel.dueDate)
                        .datePickerStyle(GraphicalDatePickerStyle())
                    
                    //Button
                    tLButton(title: "Save", background: .blue) {
                        if viewModel.canSave {
                            viewModel.save()
                            newItemPresented = false
                        } else {
                            viewModel.showAlert = true
                        }
                        
                    }
                    .padding()
                }
                .padding(.top, 30)
                .navigationTitle("New Item")
                .toolbarBackground(.red, for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)
                .alert(isPresented: $viewModel.showAlert) {
                    Alert(title: Text("Error"), message: Text("Please fill in all fields and select due date that is today or newer."))
                }
                
            }
        }
    }
}

#Preview {
    NewItemView(newItemPresented: Binding(get: {
        return true
    }, set: { _ in
        
    }))
}
