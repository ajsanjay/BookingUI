//
//  TicketView.swift
//  BookingUI
//
//  Created by Jaya Sabeen on 13/07/24.
//

import SwiftUI

struct FoldedTicketView: View {
    var body: some View {
        VStack {
            
            Text("Your Ticket")
                .foregroundColor(.white)
                .fontWeight(.bold)
                .padding()
        }
        .padding()
    }
}


struct TicketView: View {
    
    @State private var isFolded = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Image(systemName: "ticket")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .padding(.trailing, 10)
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Event Name")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("Date: July 13, 2024")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    
                    Text("Location: Example Hall")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                Spacer()
            }
            .padding(20)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5)
            
        }
        .padding()
    }
}

#Preview {
    TicketView()
}
