//
//  DashBoard.swift
//  BookingUI
//
//  Created by Jaya Sabeen on 13/07/24.
//

import SwiftUI

struct DashBoard: View {
    
    @Binding var backToLogIn: Bool
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    DashBoard(backToLogIn: .constant(false))
}
