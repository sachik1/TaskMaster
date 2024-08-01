//
//  RegistrerView.swift
//  tasks
//
//  Created by Sachi Kelkar on 7/23/24.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                //Header
                
                Form {
                    TextField("Full Name", text: $viewModel.name)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocorrectionDisabled()
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    tLButton(title: "Create Account", background: .blue) {
                        viewModel.register()
                    }
                    .padding()
                }
                .offset(y:20)
                
                Spacer()
            }
            .navigationTitle("Register")
            .toolbarBackground(.red, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
        }
    }
}

#Preview {
    RegisterView()
}
