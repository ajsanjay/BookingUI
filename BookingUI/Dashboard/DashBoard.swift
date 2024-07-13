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
        ZStack {
            Background()
        }
    }
}

#Preview {
    DashBoard(backToLogIn: .constant(true))
}
