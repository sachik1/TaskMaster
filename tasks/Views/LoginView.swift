//
//  LoginView.swift
//  tasks
//
//  Created by Sachi Kelkar on 7/23/24.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            //Header
            ZStack {
                Image("karateMaster")
                    .resizable()
                    .frame(width:150, height:150)
                
                VStack {
                    Text("Task Master")
                        .font(.system(size: 50))
                        .foregroundColor(Color.black)
                        .baselineOffset(200)
                }
                
            }
            .frame(width: UIScreen.main.bounds.width * 3, height:300)
        }
        
        Spacer()
           
        //Login
    
        
        //Create Account
    }
}

#Preview {
    LoginView()
}
