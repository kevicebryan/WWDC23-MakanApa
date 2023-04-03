//
//  QuestionView.swift
//  Rasaku
//
//  Created by Kevin Bryan on 31/03/23.
//

import SwiftUI

struct QuestionView: View {
  @Binding var page: Page

  var body: some View {
    ZStack {
      Color("darkOrange").ignoresSafeArea()
      Image("egg").ignoresSafeArea().scaleEffect(1.4).padding(.top, 850)
      VStack(alignment: .center) {
        Text(page.question ?? "").fontWeight(.medium).multilineTextAlignment(.center).frame(maxWidth: .infinity, maxHeight: 240).background(.white).font(.largeTitle).cornerRadius(32)

        NavigationLink(destination: ContentView()) {
          Text(page.answers?[0].text ?? "")
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .frame(maxWidth: .infinity, maxHeight: 120, alignment: .center)
            .padding()
            .background(Color("darkGray"))
            .cornerRadius(32).foregroundColor(.orange).font(.largeTitle).padding(.top, 120)
        }

        NavigationLink(destination: ContentView()) {
          Text(page.answers?[1].text ?? "")
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .frame(maxWidth: .infinity, maxHeight: 120, alignment: .center)
            .padding()
            .background(Color("darkGray"))
            .cornerRadius(32).foregroundColor(.yellow).font(.largeTitle).padding(.top, 60)
        }

        Text("Pick one of the options above 👆🏼").fontWeight(.regular).padding(.top, 40).font(.title).foregroundColor(.white)
        Text(page.emoji ?? "").font(.system(size: 280))
      }.padding(120)
    }
  }
}

struct QuestionView_Previews: PreviewProvider {
  static var previews: some View {
    QuestionView(page: .constant(pages[0]))
  }
}
