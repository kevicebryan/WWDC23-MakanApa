//
//  FoodIconView.swift
//  Rasaku
//
//  Created by Kevin Bryan on 08/04/23.
//

import SwiftUI

struct FoodIconView: View {
  let food: Food

  var body: some View {
    ScrollView(showsIndicators: false) {
      ZStack {
        Circle().fill(LinearGradient(colors: [food.colors[0], food.colors[1]], startPoint: .topLeading, endPoint: .bottomTrailing)).frame(width: 72, height: 72)
        Circle().fill(.white).frame(width: 60, height: 60).opacity(0.5)
        food.img.resizable().frame(width: 60, height: 60)
      }
    }.frame(height: 80).cornerRadius(80)
  }
}

struct FoodIconView_Previews: PreviewProvider {
  static var previews: some View {
    FoodIconView(food: foods[1])
  }
}
