//
//  Background.swift
//  BookingUI
//
//  Created by Jaya Sabeen on 09/07/24.
//

import SwiftUI

struct Background: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            Circle()
                .scale(1.7)
                .fill(.white.opacity(0.15))
            Circle()
                .scale(1.35)
                .fill(.white)
        }
    }
}

#Preview {
    Background()
}
