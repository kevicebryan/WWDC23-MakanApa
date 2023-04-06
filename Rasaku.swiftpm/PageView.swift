//
//  PageView.swift
//  Rasaku
//
//  Created by Kevin Bryan on 31/03/23.
//

import SwiftUI

struct PageView: View {
  @ObservedObject var pageData: PageData
  let currPage: Page

  var body: some View {
    if currPage.isFood {
      AnswerView(pageData: pageData, food: pageData.foods[currPage.foodId ?? 0])
    } else {
      QuestionView(pageData: pageData, page: currPage)
    }
  }
}

struct PageView_Previews: PreviewProvider {
  static var previews: some View {
    PageView(pageData: PageData(), currPage: pages[0])
  }
}
