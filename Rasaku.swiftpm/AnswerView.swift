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
  @Binding var food: Food

  var body: some View {
    ZStack {
      Color("darkOrange").ignoresSafeArea()
      Image("egg").ignoresSafeArea().scaleEffect(1.1).padding(.top, 120)
      VStack {
        Text("I would recommend you to try").font(.system(size: 40, weight: .heavy)).padding(.top, 80)
        Text(food.name)
          .overlay {
            LinearGradient(colors: [food.colors[0], food.colors[1]], startPoint: .topLeading, endPoint: .bottomTrailing).mask(Text(food.name))
          }.font(.system(size: 125, weight: .heavy))

        ScrollView(showsIndicators: false) {
          food.img.resizable().frame(width: 500, height: 500).background(.white).clipShape(Circle()).shadow(radius: 10).padding(.bottom, 40).padding(.top, 20)

          VStack(alignment: .leading) {
            Text("What is \(food.name)?").font(.system(size: 50, weight: .bold)).padding(.bottom, 12)
            Text(food.description).font(.system(size: 28, weight: .regular)).padding(.bottom, 32)
            Text("3 Emojis that describes this dish").font(.system(size: 28, weight: .semibold))
            HStack {
              ForEach(food.emojis, id: \.self) { emoji in
                Text(emoji).font(.system(size: 120))
                if emoji != food.emojis.last {
                  Spacer()
                }
              }
            }.padding(.horizontal, 10).padding(.top, 12)
            Spacer()
          }.padding(60).frame(maxWidth: 700, minHeight: 500, maxHeight: 900).background(LinearGradient(colors: [food.colors[0], food.colors[1]], startPoint: .topLeading, endPoint: .bottomTrailing)).cornerRadius(32).foregroundColor(.white).padding(.bottom, 32)

        }.cornerRadius(1000, corners: [.topLeft, .topRight]).cornerRadius(12, corners: [.bottomLeft, .bottomRight]).edgesIgnoringSafeArea(.bottom)
      }
    }
  }
}

struct AnswerView_Previews: PreviewProvider {
  static var previews: some View {
    AnswerView(food: .constant(foods[0]))
  }
}
