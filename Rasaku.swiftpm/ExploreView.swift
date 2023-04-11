//
//  ExploreView.swift
//  Rasaku
//
//  Created by Kevin Bryan on 03/04/23.
//

import SwiftUI

struct ExploreView: View {
  @ObservedObject var pageData: PageData

  var body: some View {
    ZStack {
      Image("backgroundGerobak").edgesIgnoringSafeArea(.all)

      VStack {
        VStack {
          Text("Explore other").font(.system(size: 40, weight: .regular))
          Text("Streetfood").font(.system(size: 80, weight: .heavy)).overlay {
            LinearGradient(colors: [.blue, .purple], startPoint: .topLeading, endPoint: .bottomTrailing).mask(Text("Streetfood"))
          }.font(.system(size: 80, weight: .heavy))
          HStack {
            Text("described as").font(.system(size: 40, weight: .regular))
            Text("Emojis").font(.system(size: 40, weight: .heavy))
          }
        }.padding(.top, 100)

        ZStack {
          Image("emojiBoard").scaleEffect(0.90).padding(.top, -40)
          // Martabak
          NavigationLink(destination: AnswerView(pageData: pageData, food: pageData.foods[0])) {
            FoodIconView(food: pageData.foods[0])
          }.position(x: 350, y: 300).zIndex(1)
          // Rendang
          NavigationLink(destination: AnswerView(pageData: pageData, food: pageData.foods[1])) {
            FoodIconView(food: pageData.foods[1])
          }.position(x: 250, y: 600).zIndex(2)
          // Pempek
          NavigationLink(destination: AnswerView(pageData: pageData, food: pageData.foods[2])) {
            FoodIconView(food: pageData.foods[2])
          }.position(x: 410, y: 500).zIndex(3)
          // Soto
          NavigationLink(destination: AnswerView(pageData: pageData, food: pageData.foods[3])) {
            FoodIconView(food: pageData.foods[3])
          }.position(x: 500, y: 450).zIndex(4)
          // Bakso
          NavigationLink(destination: AnswerView(pageData: pageData, food: pageData.foods[4])) {
            FoodIconView(food: pageData.foods[4])
          }.position(x: 600, y: 440).zIndex(5)
          // Nasi Goreng
          NavigationLink(destination: AnswerView(pageData: pageData, food: pageData.foods[5])) {
            FoodIconView(food: pageData.foods[5])
          }.position(x: 530, y: 600).zIndex(6)
          // Nasi Uduk
          NavigationLink(destination: AnswerView(pageData: pageData, food: pageData.foods[6])) {
            FoodIconView(food: pageData.foods[6])
          }.position(x: 560, y: 360).zIndex(1)
          // Sate Ayam
          NavigationLink(destination: AnswerView(pageData: pageData, food: pageData.foods[7])) {
            FoodIconView(food: pageData.foods[7])
          }.position(x: 220, y: 380).zIndex(8)
          // Gado Gado
          NavigationLink(destination: AnswerView(pageData: pageData, food: pageData.foods[8])) {
            FoodIconView(food: pageData.foods[8])
          }.position(x: 400, y: 390).zIndex(1)
        }.padding(.top, -100)
      }
      // Pisang Goreng
      NavigationLink(destination: AnswerView(pageData: pageData, food: pageData.foods[9])) {
        FoodIconView(food: pageData.foods[9])
      }.position(x: 450, y: 540).zIndex(1)

//      NavigationLink(destination: PageView(pageData: pageData, currPage: pageData.pages[0])) {
//        HStack(alignment: .center) {
//          Text("Ask me again 🙋")
//            .fontWeight(.semibold)
//            .multilineTextAlignment(.center).frame(width: 220).padding(.top, 16).padding(.bottom, -16).font(.title3)
//        }.foregroundColor(.white).font(.largeTitle).padding(.bottom, 32).background(Color("darkGray")).cornerRadius(80).padding(.top, 20).padding(.bottom, 60).zIndex(-1)
//      }

    }.scaleEffect(1.1)
  }
}

struct ExploreView_Previews: PreviewProvider {
  static var previews: some View {
    ExploreView(pageData: PageData())
  }
}
