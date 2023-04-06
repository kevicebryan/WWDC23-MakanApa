//
//  AnswerView.swift
//  Rasaku
//
//  Created by Kevin Bryan on 31/03/23.
//

import SwiftUI

extension View {
  func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
    clipShape(RoundedCorner(radius: radius, corners: corners))
  }
}

struct RoundedCorner: Shape {
  var radius: CGFloat = .infinity
  var corners: UIRectCorner = .allCorners
  func path(in rect: CGRect) -> Path {
    let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
    return Path(path.cgPath)
  }
}

struct AnswerView: View {
  @ObservedObject var pageData: PageData
  let food: Food

  var body: some View {
    ZStack {
      Color("darkOrange").ignoresSafeArea()
      Image("egg").ignoresSafeArea().scaleEffect(0.9).padding(.top, 160)
      VStack {
        Text("I would recommend you to try").font(.system(size: 40, weight: .heavy)).padding(.top, 150).foregroundColor(.black)
        Text(food.name)
          .overlay {
            LinearGradient(colors: [food.colors[0], food.colors[1]], startPoint: .topLeading, endPoint: .bottomTrailing).mask(Text(food.name))
          }.font(.system(size: 125, weight: .heavy)).padding(.top, -48)

        ScrollView(showsIndicators: false) {
          food.img.resizable().frame(width: 500, height: 500).background(.white).clipShape(Circle()).shadow(radius: 10).padding(.bottom, 60).padding(.top, 20)

          VStack(alignment: .leading) {
            Text("What is \(food.name)?").font(.system(size: 40, weight: .bold)).padding(.bottom, 12)
            Text(food.description).font(.system(size: 24, weight: .regular)).padding(.bottom, 32)
            Text("3 Emojis that describes this dish").font(.system(size: 24, weight: .semibold))
            HStack {
              ForEach(food.emojis, id: \.self) { emoji in
                Text(emoji).font(.system(size: 120))
                if emoji != food.emojis.last {
                  Spacer()
                }
              }
            }.padding(.horizontal, 10).padding(.top, 12)
            Spacer()
          }.padding(40).frame(maxWidth: 640, minHeight: 500, maxHeight: 880).background(LinearGradient(colors: [food.colors[0], food.colors[1]], startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(32).foregroundColor(.white).zIndex(10)

          NavigationLink(destination: ExploreView()) {
            HStack(alignment: .center) {
              Text("Explore more")
                .fontWeight(.semibold)
                .multilineTextAlignment(.center).frame(width: 200).padding(.top, 16).padding(.bottom, -16).font(.title3)
            }.foregroundColor(.white).font(.largeTitle).padding(.bottom, 32).background(.black).cornerRadius(80).padding(.top, 20).padding(.bottom, 60)
          }

        }.cornerRadius(180, corners: [.topLeft, .topRight]).cornerRadius(12, corners: [.bottomLeft, .bottomRight]).edgesIgnoringSafeArea(.bottom)
      }
    }
  }
}

struct AnswerView_Previews: PreviewProvider {
  static var previews: some View {
    AnswerView(pageData: PageData(), food: foods[0])
  }
}
