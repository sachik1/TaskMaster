//
//  HeaderView2.swift
//  tasks
//
//  Created by Sachi Kelkar on 7/26/24.
//

import SwiftUI

struct HeaderView2: View {
    let title: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(Color.red)

            VStack {
                Text(title)
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
            }
            .padding(.top, 0)
            
        }
        .frame(width: UIScreen.main.bounds.width * 3, height:300)
        .offset(y: -150)
    }
}

#Preview {
    HeaderView2(title: "Title")
}
