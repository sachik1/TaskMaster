//
//  tLButton.swift
//  tasks
//
//  Created by Sachi Kelkar on 7/28/24.
//

import SwiftUI

struct tLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            //Action
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
    }
}

struct tLButton_Previews: PreviewProvider {
    static var previews: some View {
        tLButton(title: "Value", background: .blue) {
            
        }
    }
}
