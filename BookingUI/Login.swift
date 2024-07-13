//
//  Login.swift
//  BookingUI
//
//  Created by Jaya Sabeen on 04/07/24.
//

import SwiftUI

struct Login: View {
    
    @State private var userName: String = ""
    @State private var password: String = ""
    @State var gotoDashboard: Bool = false
    
    var body: some View {
        ZStack {
            Background()
            VStack {
                HeadingStyle(content: "Log In")
                    .padding(.bottom, 40)
                VStack {
                    TextField("Username", text: $userName)
                        .padding()
                        .padding(.horizontal)
                        .padding(.top, 10)
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(Color.gray)
                    TextField("Password", text: $password)
                        .padding()
                        .padding(.horizontal)
                        .padding(.bottom, 10)
                }
                .frame(width: Constants.screenWidth * 0.8)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.gray, lineWidth: 1)
                )
                Button(action: {
                    
                }) {
                    ButtonTitle(content: "Login")
                }
                .padding()
            }
        }
        .fullScreenCover(isPresented: $gotoDashboard, content: {
            DashBoard(backToLogIn: $gotoDashboard)
        })
    }
}

#Preview {
    Login()
}
