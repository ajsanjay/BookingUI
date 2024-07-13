//
//  ButtonTitle.swift
//  BookingUI
//
//  Created by Jaya Sabeen on 13/07/24.
//

import SwiftUI

struct ButtonTitle: View {
    
    let content: String
    
    var body: some View {
        Text(content)
            .fontWeight(.bold)
            .padding()
            .padding(.leading, 20)
            .padding(.trailing, 20)
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(Capsule())
    }
}

#Preview {
    ButtonTitle(content: /*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
}
