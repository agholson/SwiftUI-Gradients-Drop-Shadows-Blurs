//
//  ContentView.swift
//  M1L4 GradientsDropShadowsBlurs
//
//  Created by Leone on 3/5/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            
            LinearGradient(
                gradient: Gradient(stops: [
                    .init(color: .red, location: 0),
                    .init(color: .blue, location: 0.3), // Starts point three away
                    .init(color: .purple, location: 0.7)
                
                ]),
                // Ranges from zero to one with 1 all the way at the right for X
                // Or 1 all the way at the bottom for y
                startPoint: UnitPoint(x: 0.5, y: 0),
                endPoint: UnitPoint(x: 0.5, y: 1)
            )
            // Ignore the safe area to use the whole screen
                .ignoresSafeArea()
            
            VStack {
                ZStack {
                    // MARK: - Top Button
                    Capsule()
                        .fill(LinearGradient(
                            gradient: Gradient(
                                colors: [.green, .blue]),
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                        )
                        .frame(width: 200, height: 40)
                    Text("Hello")
                        .foregroundColor(.white)
                }
                
                // Second button
                // MARK: - Radial Gradient
                ZStack {
                    Capsule()
                        .fill(
                            RadialGradient(
                                colors: [.green, .blue],
                                center: .center,
                                startRadius: 0,
                                endRadius: 100
                            )
                        )
                        .frame(width: 200, height: 40)
                    Text("Hello")
                        .foregroundColor(.white)
                }
                
                ZStack {
                    Capsule()
                        .fill(
                            AngularGradient(
                                colors: [.blue, .yellow],
                                            center: .center,
                                startAngle: Angle(degrees: 160),
                                endAngle: Angle(degrees: 160)
                            )
                        )
                        .frame(width: 200, height: 40)
                    Text("Hello")
                        .foregroundColor(.white)
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
