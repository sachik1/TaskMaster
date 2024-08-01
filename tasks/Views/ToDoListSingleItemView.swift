//
//  ToDoListSingleItemView.swift
//  tasks
//
//  Created by Sachi Kelkar on 7/23/24.
//

import SwiftUI

struct ToDoListSingleItemView: View {
    @StateObject var viewModel = ToDoListSingleItemViewViewModel()
    let item: ToDoListItem
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.body)
                Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time: .shortened))")
                    .font(.footnote)
                    .foregroundColor(Color(.secondaryLabel))
            }
            
            Spacer()
            
            Button {
                viewModel.toggleIsDone(item: item)
            } label: {
                if (item.isDone) {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(Color.blue)
                }
                else {
                    Image(systemName: "circle")
                        .foregroundColor(Color.blue)
                }
            }
        }
    }
}

#Preview {
    ToDoListSingleItemView(item: .init(id: "123", title: "Get milk", dueDate: Date().timeIntervalSince1970, createdDate: Date().timeIntervalSince1970, isDone: false))
}
