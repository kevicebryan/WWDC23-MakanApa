//
//  QuestionView.swift
//  Rasaku
//
//  Created by Kevin Bryan on 31/03/23.
//

import SwiftUI

struct QuestionView: View {
//  @Binding var page: Page
  @ObservedObject var pageData: PageData
  let page: Page

  var body: some View {
    ZStack {
      Color("darkOrange").ignoresSafeArea()
      Image("egg").ignoresSafeArea().scaleEffect(1.05).padding(.top, 800)
      VStack(alignment: .center) {
        Text(page.question ?? "").fontWeight(.medium).multilineTextAlignment(.center).frame(maxWidth: .infinity, maxHeight: 240).background(.white).font(.largeTitle).cornerRadius(32).padding(.top, 100).padding(.horizontal, 60)

        VStack {
          NavigationLink(destination: PageView(
            pageData: pageData, currPage: pageData.pages[page.answers?[0].destination ?? 0]
          )) {
            Text(page.answers?[0].text ?? "")
              .fontWeight(.semibold)
              .multilineTextAlignment(.center)
              .frame(maxWidth: .infinity, maxHeight: 100, alignment: .center)
              .padding()
              .background(Color("darkGray"))
              .cornerRadius(32).foregroundColor(.orange).font(.largeTitle).padding(.top, 80)
          }

          NavigationLink(destination: PageView(
            pageData: pageData, currPage: pageData.pages[page.answers?[1].destination ?? 0]
          )) {
            Text(page.answers?[1].text ?? "")
              .fontWeight(.semibold)
              .multilineTextAlignment(.center)
              .frame(maxWidth: .infinity, maxHeight: 100, alignment: .center)
              .padding()
              .background(Color("darkGray"))
              .cornerRadius(32).foregroundColor(.yellow).font(.largeTitle).padding(.top, 40)
          }
        }.padding(.horizontal, 120)

        Text("Pick one of the options above 👆🏼").fontWeight(.light).padding(.top, 20).font(.title).foregroundColor(.white)
        Text(page.emoji ?? "").font(.system(size: 200))
      }
    }
  }
}

struct QuestionView_Previews: PreviewProvider {
  static var previews: some View {
    QuestionView(pageData: PageData(), page: pages[0])
  }
}
