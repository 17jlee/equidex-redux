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
                    
                    VStack {
                        HStack{
                            Image(systemName: "person.circle")
                                .font(.title)
                                .foregroundStyle(.white)
                            Text("Good Morning!\nJimin Lee")
                                .font(.custom("TrebuchetMS-Bold", size: 15))
                                .fontWeight(.bold)
                                .foregroundStyle(.white)
                            Spacer()
                            Image(systemName: "gear.circle")
                                .font(.title)
                                .foregroundStyle(.white)
                        }
                        .padding()
                        HStack {
                            ZStack {
                                Rectangle()
                                    .fill(.white)
                                    .frame(width: 150, height: 50)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                    .padding(.leading)
                                HStack {
                                    Image("money")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 30)
                                        .padding(.leading, 10.0)
                                    Text("50")
                                        .font(.custom("TrebuchetMS-Bold", size: 13))
                                        .foregroundStyle(.black)
                                    
                                    Text("Coins")
                                        .font(.custom("TrebuchetMS-Bold", size: 13))
                                        .foregroundStyle(.celestialBlue)
                                }
                                
                            }
                            
                            Spacer()
                            ZStack {
                                Rectangle()
                                    .fill(.white)
                                    .frame(width: 150, height: 50)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                    .padding(.leading)
                                HStack {
                                    Image("flame")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 30)
                                        .padding(.leading, 10.0)
                                    Text("29")
                                        .font(.custom("TrebuchetMS-Bold", size: 13))
                                        .foregroundStyle(.black)
                                    
                                    Text("Days")
                                        .font(.custom("TrebuchetMS-Bold", size: 13))
                                        .foregroundStyle(.celestialRed)
                                }
                                
                            }
                            .padding(.trailing)
                        }
                        
                        
                        Spacer()
                    }
                    
                    
                }
                
                
                Spacer()
            }
            
            VStack {
                Spacer()
                Rectangle()
                    .fill(.white)
                    .ignoresSafeArea()
                    .frame(height: 600)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
            }
            VStack {
                Spacer()
                Rectangle()
                    .fill(.white)
                    .ignoresSafeArea()
                    .frame(height: 175)
                    
            }
            VStack {
                HStack {
                    Spacer()
                    Button(action:{
                        blur.toggle()
                    }) {
                        VStack {
                            
                            ZStack {
                                Circle()
                                    .fill(.ourGray)
                                    .frame(width: 100)
                                Circle()
                                    .fill(.white)
                                    .frame(width: 93)
                                Image("money-basics")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50)
                                    .padding(.top, 9.0)
                            }
                            Text("Money Basics")
                                .font(.custom("TrebuchetMS-Bold", size: 15))
                                .foregroundStyle(.black)
                            
                        }
                    }
                    //.padding(.leading)
                    Spacer()
                    VStack {
                        
                        ZStack {
                            Circle()
                                .fill(.ourGray)
                                .frame(width: 100)
                            Circle()
                                .fill(.white)
                                .frame(width: 93)
                            Image("savings")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50)
                                //.padding(.top, 9.0)
                        }
                        Text("Saving & Budgeting")
                            .font(.custom("TrebuchetMS-Bold", size: 15))
                            .foregroundStyle(.black)
                        
                    }
                    Spacer()
                }
                HStack {
                    //Spacer()
                    VStack {
                        
                        ZStack {
                            Circle()
                                .fill(.ourGray)
                                .frame(width: 100)
                            Circle()
                                .fill(.white)
                                .frame(width: 93)
                            Image("bank")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50)
                                //.padding(.top, 9.0)
                        }
                        Text("Intro to Banking")
                            .font(.custom("TrebuchetMS-Bold", size: 15))
                            .foregroundStyle(.black)
                        
                    }
                    Spacer()
                    VStack {
                        
                        ZStack {
                            Circle()
                                .fill(.ourGray)
                                .frame(width: 100)
                            Circle()
                                .fill(.white)
                                .frame(width: 93)
                            Image("borrowing")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50)
                                .padding(.trailing, 4.0)
                        }
                        Text("Credit")
                            .font(.custom("TrebuchetMS-Bold", size: 15))
                            .foregroundStyle(.black)
                        
                    }.padding(.trailing, 70.0)
                //Spacer()
                }.padding(.leading, 50)
                    .padding(.top, 20)
                
                HStack {
                    //Spacer()
                    Button(action: {
                        showingPopover = true
                    }) {
                        VStack {
                            
                            ZStack {
                                Circle()
                                    .fill(.ourGray)
                                    .frame(width: 100)
                                Circle()
                                    .fill(.white)
                                    .frame(width: 93)
                                Image("tax")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50)
                                    //.padding(.top, 9.0)
                            }
                            Text("Taxes")
                                .font(.custom("TrebuchetMS-Bold", size: 15))
                                .foregroundStyle(.black)
                            
                        }
                    }.popover(isPresented: $showingPopover) {
                        Text("Your content here")
                            .font(.headline)
                            .padding()
                    }
                    
                    Spacer()
                    VStack {
                        
                        ZStack {
                            Circle()
                                .fill(.ourGray)
                                .frame(width: 100)
                            Circle()
                                .fill(.white)
                                .frame(width: 93)
                            Image("investing")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50)
                                .padding(.leading, 4.0)
                        }
                        Text("Investing")
                            .font(.custom("TrebuchetMS-Bold", size: 15))
                            .foregroundStyle(.black)
                        
                    }.padding(.trailing, 70.0)
                //Spacer()
                }.padding(.leading, 55)
                    .padding(.top, 20)
                Spacer()
                
                VStack {
                    
                    ZStack {
                        Circle()
                            .fill(.ourGray)
                            .frame(width: 100)
                        Circle()
                            .fill(.white)
                            .frame(width: 93)
                        Image("future")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50)
                            //.padding(.top, 9.0)
                    }
                    Text("Financial Future")
                        .font(.custom("TrebuchetMS-Bold", size: 15))
                        .foregroundStyle(.black)
                    
                }
                
            }.padding(.top, 180.0)
            if blur {
                VisualEffectView(effect: UIBlurEffect(style: .light))
                                .edgesIgnoringSafeArea(.all)
            }
            
//            Text("Money Basics")
//                //.padding(.horizontal, 200.0)
//                //.padding(.vertical, 400.0)
//                //.background(.ultraThinMaterial)
//                .blur(radius: 20)
                
            
            
            
        }//.blur(radius: 15)
    }
}

#Preview {
    ContentView()
}
