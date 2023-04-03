//
//  Food.swift
//  Rasaku
//
//  Created by Kevin Bryan on 31/03/23.
//

import Foundation
import SwiftUI

struct Food: Identifiable {
  let id: Int
  let name: String
  let description: String
  let emojis: [String]
  let img: Image
  let colors: [Color]
}

let foods = [
  Food(id: 0, name: "Martabak", description: "Martabak is a sweet Indonesian streetfood snack, that has a fluffy and bouncy texture. It is usually topped with chocolate, nuts, and cheese. The food itself uses a ton of butter which makes it very delicious. They usually sell martabak at the side of the road, especilly at night time.", emojis: ["😋", "🥞", "🧈"], img: Image(""), colors: [Color.purple, Color.yellow]),
  Food(id: 1, name: "Rendang", description: "", emojis: ["🌶️", "🫶", "🥩"], img: Image(""), colors: [Color.brown, Color.red]),
  Food(id: 2, name: "Pempek", description: "", emojis: ["🐟", "👌", "🤍"], img: Image(""), colors: [Color.red, Color.black]),
  Food(id: 3, name: "Soto", description: "", emojis: ["🍲", "🌝", "🥰"], img: Image(""), colors: [Color.yellow, Color.green]),
  Food(id: 4, name: "Bakso", description: "", emojis: ["🍲", "🏓", "😚"], img: Image(""), colors: [Color.blue, Color.green]),
  Food(id: 5, name: "Nasi Goreng", description: "", emojis: ["🍳", "🔥", "🌇"], img: Image(""), colors: [Color.red, Color.yellow]),
  Food(id: 6, name: "Nasi Uduk", description: "", emojis: ["🍚", "🥥", "🌅"], img: Image(""), colors: [Color.green, Color.purple]),
  Food(id: 7, name: "Iga Bakar", description: "", emojis: ["🔥", "🥩", "😋"], img: Image(""), colors: [Color.black, Color.blue]),
  Food(id: 8, name: "Gado-gado", description: "", emojis: ["🥜", "🥗", "😗"], img: Image(""), colors: [Color.brown, Color.green]),
  Food(id: 9, name: "Pisang Goreng", description: "", emojis: ["🍌", "🍫", "🤗"], img: Image(""), colors: [Color.purple, Color.yellow]),
]
