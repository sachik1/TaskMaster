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
                HeaderView2(title: "Profile")
                    .offset(y: -320)
            }
        }
    }
}

#Preview {
    ProfileView()
}
