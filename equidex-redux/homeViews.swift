import SwiftUI

struct VisualEffectView: UIViewRepresentable {
    var effect: UIVisualEffect?
    func makeUIView(context: UIViewRepresentableContext<Self>) -> UIVisualEffectView { UIVisualEffectView() }
    func updateUIView(_ uiView: UIVisualEffectView, context: UIViewRepresentableContext<Self>) { uiView.effect = effect }
}

struct testView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.black)
                .frame(width: .infinity, height: .infinity)
                .ignoresSafeArea()
            VStack {
                gradientView()
                    .frame(height: 240)
                    .ignoresSafeArea()
                Spacer()
            }
            VStack {
                Rectangle()
                    .fill(.white)
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    
                    .padding(.top, 240.0)
                    .ignoresSafeArea()
                Spacer()

            }
            
        }
    }
}

struct circleModuleView: View {
    var label: String
    var image: String
    
    var body: some View {
        VStack {
            ZStack {
                
                Circle()
                    .fill(.ourGray)
                    .frame(width: 100)
                Circle()
                    .fill(.white)
                    .frame(width: 93)
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
                    .padding(.top, 9.0)
            }
            Text(label)
                .font(.custom("TrebuchetMS-Bold", size: 15))
                .foregroundStyle(.black)
            
        }
    }
}

struct squareStatView: View {
    var counter: Int
    var label: String
    var image: String
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.white)
                .frame(width: 150, height: 50)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.leading)
            HStack {
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30)
                    .padding(.leading, 10.0)
                Text(String(counter))
                    .font(.custom("TrebuchetMS-Bold", size: 13))
                    .foregroundStyle(.black)
                
                Text(label)
                    .font(.custom("TrebuchetMS-Bold", size: 13))
                    .foregroundStyle(.celestialRed)
            }
            
        }
    }
}
struct homeBarView: View {
    var body: some View {
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
    }
}

struct gradientView: View {
    var body: some View {
        Rectangle()
            .fill(LinearGradient(
                gradient: .init(colors: [Color("celestial-red"), Color("celestial-blue")]),
                startPoint: .init(x: 0.00, y: 0),
                endPoint: .init(x: 1, y: 0.7)
            ))
    }
}

#Preview {
    testView()
}




//VStack {
//    Spacer()
//    Rectangle()
//        .fill(.white)
//        .ignoresSafeArea()
//        .frame(height: 600)
//        .clipShape(RoundedRectangle(cornerRadius: 15))
//}
//VStack {
//    Spacer()
//    Rectangle()
//        .fill(.white)
//        .ignoresSafeArea()
//        .frame(height: 175)
//        
//}
