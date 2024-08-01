//
//  ProfileView.swift
//  tasks
//
//  Created by Sachi Kelkar on 7/23/24.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                if let user = viewModel.user {
                    //Avatar
                    Image(systemName: "person.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120, height: 120)
                        .offset(y: -80)
                    
                    //Info: Name, email, member since
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Name: ")
                                .bold()
                            Text(user.name)
                        }
                        .padding()
                        HStack {
                            Text("Email: ")
                                .bold()
                            Text(user.email)
                        }
                        .padding()
                        HStack {
                            Text("Member Since: ")
                                .bold()
                            Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
                        }
                        .padding()
                    }
                    .offset(y: -100)
                    .padding()
                    
                    
                    //Sign out
                    tLButton(title: "Log out", background: .blue) {
                        //Sign out
                        viewModel.logOut()
                    }
                    .frame(width: 300, height: 40)
                    .offset(y: -100)
                    .padding()
                }
                else {
                    Text("Loading Profile...")
                }
                
            }
            .navigationTitle("Profile")
            .toolbarBackground(.red, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
        }
        .onAppear {
            viewModel.fetchUser()
        }
    }
}

#Preview {
    ProfileView()
}
