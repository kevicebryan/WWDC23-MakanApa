//
//  PageView.swift
//  Rasaku
//
//  Created by Kevin Bryan on 31/03/23.
//

import AVFoundation
import SwiftUI

class AudioManager {
  static let instance = AudioManager()
  var player: AVAudioPlayer?

  func playSound() {
    guard let url = Bundle.main.url(forResource: "soundEffect", withExtension: ".wav") else {
      return
    }
    do {
      player = try AVAudioPlayer(contentsOf: url)
      player?.play()
    } catch {
      print("ERROR: AUDIO CANNOT BE PLAYED! \(error.localizedDescription)")
    }
  }
}

struct PageView: View {
  @ObservedObject var pageData: PageData
  let currPage: Page

  var body: some View {
    if currPage.isFood {
      AnswerView(pageData: pageData, food: pageData.foods[currPage.foodId ?? 0])
    } else {
      QuestionView(pageData: pageData, page: currPage).onAppear {
        AudioManager.instance.playSound()
      }
    }
  }
}

struct PageView_Previews: PreviewProvider {
  static var previews: some View {
    PageView(pageData: PageData(), currPage: pages[0])
  }
}
