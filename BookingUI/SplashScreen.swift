//
//  SplashScreen.swift
//  BookingUI
//
//  Created by Jaya Sabeen on 04/07/24.
//

import SwiftUI

struct SplashScreen: View {
    
    let facilities = ["car", "train.side.front.car", "airplane", "bus"]
    @State private var loadingText: String = ".."
    @State private var currentIndex = 0
    @State private var progress: Float = 0.0
    @State private var timer: Timer?
    @State private var isDashboard: Bool = false
    
    var body: some View {
        ZStack {
            Background()
            VStack {
                VStack {
                    Image(systemName: facilities[currentIndex])
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .animation(.easeInOut(duration: 1), value: currentIndex)
                        .padding()
                        .foregroundColor(.red)
                }
                .padding()
                HStack {
                    ZStack {
                        Text("Loading")
                            .foregroundColor(.red)
                        Text(loadingText)
                            .offset(x: (UIScreen.main.bounds.size.width / 8))
                            .foregroundColor(.red)
                    }
                }
                .padding()
                ProgressView(value: progress, total: 1.0)
                    .progressViewStyle(LinearProgressViewStyle())
                    .padding()
                    .tint(.red)
            }
        }
        .onAppear() {
            startTimer()
            startProgress()
        }
        .fullScreenCover(isPresented: $isDashboard, content: {
            Login()
        })
    }
    
    
    func startTimer() {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            withAnimation {
                currentIndex = (currentIndex + 1) % facilities.count
            }
        }
    }
    
    func startProgress() {
        progress = 0.0
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 0.2, repeats: true) { timer in
            if progress < 1.0 {
                loadingText = loadingText == ".." ? "...." : ".."
                withAnimation {
                    progress += 0.03
                }
            } else {
                timer.invalidate()
                isDashboard = true
            }
        }
    }
    
}

#Preview {
    SplashScreen()
}
