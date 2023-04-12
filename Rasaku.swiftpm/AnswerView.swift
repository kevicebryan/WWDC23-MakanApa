//
//  AnswerView.swift
//  Rasaku
//
//  Created by Kevin Bryan on 31/03/23.
//

import SwiftUI

struct AnswerView: View {
  @ObservedObject var pageData: PageData
  let food: Food
  @State var animationScale = 0.5
  @State var animationDegree = -420

  var body: some View {
    ZStack {
      Color("darkOrange").ignoresSafeArea()
      Image("egg").ignoresSafeArea().scaleEffect(0.9).padding(.top, 160)
      VStack {
        Text("I would recommend you to try").font(.system(size: 40, weight: .heavy)).padding(.top, 150).foregroundColor(.black)

        Text(food.name)
          .overlay {
            LinearGradient(colors: [food.colors[0], food.colors[1]], startPoint: .topLeading, endPoint: .bottomTrailing).mask(Text(food.name))
          }.font(.system(size: 125, weight: .heavy)).padding(.top, -48).padding(.bottom, 32)

        ScrollView(showsIndicators: false) {
          food.img.resizable().frame(width: 500, height: 500).padding(.bottom, 40).padding(.top, 10).onAppear {
            animationScale = 1.15
            animationDegree = 0
          }.scaleEffect(animationScale).rotationEffect(.degrees(Double(animationDegree))).animation(.easeInOut(duration: 0.8))

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
            HStack {
              Spacer()
              food.factImg.scaleEffect(1.2).padding(.top, -20).padding(.bottom, 20)
              Spacer()
            }.frame(width: .infinity)
            Spacer()
          }.padding(40).frame(maxWidth: 640, minHeight: 500, maxHeight: .infinity).background(LinearGradient(colors: [food.colors[0], food.colors[1]], startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(32).foregroundColor(.white)

          NavigationLink(destination: ExploreView(pageData: pageData)) {
            HStack(alignment: .center) {
              Text("Explore more")
                .fontWeight(.semibold)
                .multilineTextAlignment(.center).frame(width: 200).padding(.top, 16).padding(.bottom, -16).font(.title3)
            }.foregroundColor(.white).font(.largeTitle).padding(.bottom, 32).background(Color("darkGray")).cornerRadius(80).padding(.top, 20).padding(.bottom, 60)
          }

        }.cornerRadius(32).edgesIgnoringSafeArea(.bottom)
      }
    }
  }
}

struct AnswerView_Previews: PreviewProvider {
  static var previews: some View {
    AnswerView(pageData: PageData(), food: foods[6])
  }
}
