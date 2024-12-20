//
//  ContentView.swift
//  equidex-redux
//
//  Created by Jimin Lee on 18/12/2024.
//

import SwiftUI

struct VisualEffectView: UIViewRepresentable {
    var effect: UIVisualEffect?
    func makeUIView(context: UIViewRepresentableContext<Self>) -> UIVisualEffectView { UIVisualEffectView() }
    func updateUIView(_ uiView: UIVisualEffectView, context: UIViewRepresentableContext<Self>) { uiView.effect = effect }
}

struct ContentView: View {
    @State private var showingPopover = false
    @State private var blur = false
    var body: some View {
        ZStack {
            VStack {
                ZStack {
                    VStack {
                        Rectangle()
                            .fill(LinearGradient(
                                gradient: .init(colors: [Color("celestial-red"), Color("celestial-blue")]),
                                startPoint: .init(x: 0.00, y: 0),
                                endPoint: .init(x: 1, y: 0.7)
                            ))
                            .ignoresSafeArea()
                            .frame(height: 175)
                        Spacer()
                    }
                    
                    
                    
                    
                }
                
                
                Spacer()
            }
            
            
            


                
            
            
            
        }
    }
}

#Preview {
    ContentView()
}
