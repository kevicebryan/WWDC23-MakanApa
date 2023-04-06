//
//  MenuView.swift
//  Rasaku
//
//  Created by Kevin Bryan on 30/03/23.
//

import SwiftUI

struct MenuView: View {
  @StateObject var pageData = PageData()
  @State var animationAmount = 0.8

  var body: some View {
    NavigationView {
      ZStack {
        Color("darkOrange").edgesIgnoringSafeArea(.all)
        Image("gerobak").edgesIgnoringSafeArea(.all).padding(.top, 400).padding(.leading, 240).scaleEffect(0.9).onAppear {}
        VStack {
          Text("MakanApa?").font(.system(size: 120)).fontWeight(.bold)
          Text("Let me recommend you what Indo Streetfood you should try! 🇮🇩").font(.title3).fontWeight(.semibold).padding(.top, -80)
          NavigationLink(destination: PageView(pageData: pageData, currPage: pageData.pages[0])) {
            Image("tahu")
              .padding(.top, -64).scaleEffect(animationAmount)
              .animation(.linear(duration: 0.15).delay(0.2).repeatForever(autoreverses: true), value: animationAmount)
              .onAppear {
                animationAmount = 1.1
              }
          }
          Text("Click the gorengan to play!").padding(.top, -32)
        }.foregroundColor(.white).padding(.top, -40)
      }
    }.navigationViewStyle(StackNavigationViewStyle())
      .environmentObject(pageData)
  }
}

struct MenuView_Previews: PreviewProvider {
  static var previews: some View {
    MenuView()
  }
}
