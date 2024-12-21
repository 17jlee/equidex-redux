//
//  ContentView.swift
//  equidex-redux
//
//  Created by Jimin Lee on 18/12/2024.
//

import SwiftUI



struct ContentView: View {
    @State private var blur = false
    @State private var showingPopover = false
    
    var body: some View {
        ZStack {
            
            VStack { // gradient view
                gradientView()
                    .frame(height: 240)
                    .ignoresSafeArea()
                Spacer()
            }
            
            VStack { //white card effect
                Rectangle()
                    .fill(.white)
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .padding(.top, 225.0)
                    .ignoresSafeArea()
                Spacer()
            }
                            
            VStack { //home bar and stats views
                homeBarView()
                    .padding()
                
                HStack { //stats stack
                    squareStatView(counter: 50, label: "Coins", image: "money")
                    Spacer()
                    squareStatView(counter: 29, label: "Days", image: "flame")
                        .padding(.trailing)
                }
                
                Spacer()
            }
            
            VStack { //all module circular view
                
                HStack { //mb & sb
                    Spacer()
                    Button(action: {
                        withAnimation {
                            blur.toggle()
                        }
                        
                    }) {
                        circleModuleView(label: "Money Basics", image: "money-basics")
                            .padding(.leading)
                            .padding(.leading)
                    }
                    
                    Spacer()
                    Button(action: {
                        showingPopover = true
                    }) {
                        circleModuleView(label: "Saving & Budgeting", image: "savings")
                            //.frame(width:100.0)
                            .padding(.trailing)
                    }
                    
                    Spacer()
                }.padding(.bottom)
                
                HStack { //ib & c
                    Spacer()
                    circleModuleView(label: "Intro to Banking", image: "bank")
                    Spacer()
                    circleModuleView(label: "Credit", image: "borrowing")
                        .padding(.trailing, 10.0)
                    Spacer()
                    
                }.padding(.bottom)
                
                HStack { //t&i
                    Spacer()
                    circleModuleView(label: "Taxes", image: "tax")
                    Spacer()
                    circleModuleView(label: "Investing", image: "investing")
                        .padding(.trailing, 10.0)
                    Spacer()
                    
                }.padding(.bottom)
                
                Spacer()
            }
            .padding(.top, 240.0)
            .ignoresSafeArea()
            
            if blur {
                Button(action: {
                    blur = false
                }) {
                    ZStack {
                        VisualEffectView(effect: UIBlurEffect(style: .light))
                            .edgesIgnoringSafeArea(.all)
                        VStack {
                            circleModuleView(label: "What is Money?", image: "money")
                            circleModuleView(label: "Earning Money", image: "money")
                            circleModuleView(label: "Needs vs Wants", image: "money")
                            circleModuleView(label: "Importance of Financial Planning", image: "money")
                            
                            
                        }
                        
                    }
                }
                
                
            }
            
            
            
            
        }.popover(isPresented: $showingPopover) {
            VStack {
                circleModuleView(label: "What is Money?", image: "money")
                circleModuleView(label: "Earning Money", image: "money")
                circleModuleView(label: "Needs vs Wants", image: "money")
                circleModuleView(label: "Importance of Financial Planning", image: "money")
                
                
            }
        }
        
        
        
    }
    
}

#Preview {
    ContentView()
}
