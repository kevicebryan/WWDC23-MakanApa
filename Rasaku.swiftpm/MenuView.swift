//
//  MenuView.swift
//  Rasaku
//
//  Created by Kevin Bryan on 30/03/23.
//

import SwiftUI

struct MenuView: View {
  @State var animationAmount = 0.9

  var body: some View {
    NavigationView {
      ZStack {
        Color("darkOrange").edgesIgnoringSafeArea(.all)
        Image("gerobak").edgesIgnoringSafeArea(.all).padding(.top, 400).padding(.leading, 240)
        VStack {
          Text("MakanApa?").font(.system(size: 144)).fontWeight(.bold)
          Text("Let me recommend you your personalised Indonesian dish! 🇮🇩").font(.title2).fontWeight(.bold).padding(.top, -92)
          NavigationLink(destination: ContentView()) {
            Image("tahuPlay").scaleEffect(animationAmount)
              .animation(.linear(duration: 0.15).delay(0.2).repeatForever(autoreverses: true), value: animationAmount)
              .onAppear {
                animationAmount = 1.1
              }
          }
          Text("Click the gorengan to play!").padding(.top, -50)
        }.foregroundColor(.white)
      }
    }.navigationViewStyle(StackNavigationViewStyle())
  }
}

struct MenuView_Previews: PreviewProvider {
  static var previews: some View {
    MenuView()
  }
}
