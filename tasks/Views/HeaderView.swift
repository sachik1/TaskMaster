//
//  HeaderView.swift
//  tasks
//
//  Created by Sachi Kelkar on 7/25/24.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(Color.white)

            VStack {
                Text("Task Master")
                    .font(.system(size: 50))
                    .foregroundColor(Color.black)
                    .bold()
                
                Image("karateMaster")
                    .resizable()
                    .frame(width:120, height:120)
            }
            .padding(.top, 90)
            
        }
        .frame(width: UIScreen.main.bounds.width * 3, height:300)
        .offset(y: -100)
    }
}

#Preview {
    HeaderView()
}
