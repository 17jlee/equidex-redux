import SwiftUI

struct testView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.white)
                .frame(width: .infinity, height: .infinity)
                .ignoresSafeArea()
            HStack {
                circleModuleView(label: "money", image: "money-basics")
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

#Preview {
    testView()
}
