//
//  ExploreView.swift
//  Rasaku
//
//  Created by Kevin Bryan on 03/04/23.
//

import SwiftUI

struct ExploreView: View {
  var body: some View {
    ZStack {
      Color("darkOrange").edgesIgnoringSafeArea(.all)
      VStack {
        Text("Explore other").font(.system(size: 40, weight: .regular))
        Text("Streetfood").font(.system(size: 80, weight: .heavy)).overlay {
          LinearGradient(colors: [.blue, .purple], startPoint: .topLeading, endPoint: .bottomTrailing).mask(Text("Streetfood"))
        }.font(.system(size: 80, weight: .heavy))
        HStack {
          Text("described as").font(.system(size: 40, weight: .regular))
          Text("Emojis").font(.system(size: 40, weight: .heavy))
        }
        ZStack {
          Image("emojiBoard")
          Image("tahu").resizable().frame(width: 50, height: 50)
        }
      }
    }
  }
}

struct ExploreView_Previews: PreviewProvider {
  static var previews: some View {
    ExploreView()
  }
}
