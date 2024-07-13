//
//  HeadingStyle.swift
//  BookingUI
//
//  Created by Jaya Sabeen on 13/07/24.
//

import SwiftUI

struct HeadingStyle: View {
    let content: String
    var body: some View {
        Text(content)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    HeadingStyle(content: /*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
}
