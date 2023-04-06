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

class PageData: ObservableObject {
  @Published var foods = [Food(id: 0, name: "Martabak", description: "Martabak is a sweet, fluffy and bouncy street-food snack. It is usually topped with chocolate, nuts, and cheese. The food itself uses a ton of butter which makes it very tasty, but be careful not too eat too much. You can usually find martabak at the side of the road, especilly at night time.", emojis: ["😋", "🥞", "🧈"], img: Image(""), colors: [Color.purple, Color.yellow]),
                          Food(id: 1, name: "Rendang", description: "This traditional beef dish from Minangkabau of West Sumatra is a flavor bomb and can be a bit spicy as it contains a lot of spices. The beef is usually very tender as it takes up to 5 hours to cook. Different regions may also have their own twist to the dish, making the flavor unique for each region. You can usually find Rendang all over Indonesia in various Padang restaurants.", emojis: ["🌶️", "🫶", "🥩"], img: Image(""), colors: [Color.brown, Color.red]),
                          Food(id: 2, name: "Pempek", description: "", emojis: ["🐟", "👌", "🤍"], img: Image(""), colors: [Color.red, Color.black]),
                          Food(id: 3, name: "Soto", description: "Soto is what you would call an Indonesian Ramen. However, unlike ramen, soto uses vermicelli instead of noodles. The soup itself is made using chicken broth and traditional indonesian spices, making the soup super aromatic and calms you down as it goes down your throat. You are also usually given a lime, which you can squeeze to add an extra acidity to the dish making it fresher.", emojis: ["🍲", "🌝", "🥰"], img: Image(""), colors: [Color.yellow, Color.green]),
                          Food(id: 4, name: "Bakso", description: "Shaped like small ping-pong balls, Bakso are beef meatballs that is usually served together with vermicelli noodles in chicken stock soup. The meatball itself is usually cripsy on the outside and bouncy in the inside. This dish is so tasty that even Barack Obama couldn't resist eating Bakso everytime he visits Indonesia. The warm chicken broth makes this dish perfect to accompany you during a rainy day. This dish is usually sold in gerobaks that you can find at any streetside in Indonesia.", emojis: ["🍲", "🏓", "😚"], img: Image(""), colors: [Color.blue, Color.green]),
                          Food(id: 5, name: "Nasi Goreng", description: "Nasi Goreng directly translates to Fried Rice. What makes this Indonesian Fried Rice special is that it uses sweet soy sauce and chilli, making the the dish sweet, savory and spicy at the same time. You can find this dish everywhere in Indonesia, but to get that authentic taste, you should try Nasi Goreng from the streetside vendors in gerobaks.", emojis: ["🍳", "🔥", "🌇"], img: Image(""), colors: [Color.red, Color.yellow]),
                          Food(id: 6, name: "Nasi Uduk", description: "Nasi Uduk is Indonesia's national breakfast. It is not just any normal rice, it is rice cooked with coconut milk, making the rice even more delicious and aromatic. Various toppings can be added into your nasi uduk such as fried egg, fried vermicelli, tempe, tofu and fried shallots. Although most Indonesian have it for breakfast, you can often find stalls selling Nasi Uduk at night time.", emojis: ["🍚", "🥥", "🌅"], img: Image(""), colors: [Color.green, Color.purple]),
                          Food(id: 7, name: "Sate Ayam", description: "", emojis: ["🔥", "🥜", "😋"], img: Image(""), colors: [Color.black, Color.blue]),
                          Food(id: 8, name: "Gado Gado", description: "", emojis: ["🥜", "🥗", "😗"], img: Image(""), colors: [Color.brown, Color.green]),
                          Food(id: 9, name: "Pisang Goreng", description: "", emojis: ["🍌", "🍫", "🤗"], img: Image(""), colors: [Color.purple, Color.blue])]
  @Published var pages = [
    Page(id: 0, question: "For starters, are you a dessert type of person or do you prefer a savory meal?",
         answers: [Answer(text: "Dessert", destination: 4, color: Color.green, icon: "checkmark.circle.fill"),
                   Answer(text: "I'd like a meal please", destination: 1, color: Color.green, icon: "xmark.circle.fill")], emoji: "🍰",
         isFood: false, foodId: nil),
    Page(id: 1, question: "Indonesia has a lot of spicy food, so it's important to know if you can handle the heat?",
         answers: [Answer(text: "Yes, I can handle the heat!", destination: 2, color: Color.green, icon: "checkmark.circle.fill"),
                   Answer(text: "No, I can't handle any spice.", destination: 3, color: Color.green, icon: "xmark.circle.fill")], emoji: "🌶️",
         isFood: false, foodId: nil),
    Page(id: 2, question: "That's good, now I need to know do you prefer your food dry or wet like a soup/sauce?",
         answers: [Answer(text: "Dry food", destination: 9, // Nasi Goreng
                          color: Color.green, icon: "checkmark.circle.fill"),
                   Answer(text: "I prefer something with sauce or a soup", destination: 10, // Rendang
                          color: Color.green, icon: "xmark.circle.fill")], emoji: "🍛",
         isFood: false, foodId: nil),
    Page(id: 3, question: "That's completely fine, now I need to know if you prefer dry food or wet food like a soup/sauce?",
         answers: [Answer(text: "Dry food", destination: 5,
                          color: Color.green, icon: "checkmark.circle.fill"),
                   Answer(text: "I prefer something with sauce or a soup", destination: 6,
                          color: Color.green, icon: "xmark.circle.fill")], emoji: "🍛",
         isFood: false, foodId: nil),
    Page(id: 4, question: "Do you prefer something light to start the day 🌥️ or full to end the night? 🌌",
         answers: [Answer(text: "Light", destination: 11, // Pisang goreng
                          color: Color.green, icon: "checkmark.circle.fill"),
                   Answer(text: "Full", destination: 12, // Martabak
                          color: Color.green, icon: "xmark.circle.fill")], emoji: "🫄",
         isFood: false, foodId: nil),
    Page(id: 5, question: "Now then, do you prefer roasted chared food🔥 or soul food?😌",
         answers: [Answer(text: "Roasted food", destination: 13, // Sate Ayam
                          color: Color.green, icon: "checkmark.circle.fill"),
                   Answer(text: "Soul food", destination: 14, // Nasi Uduk
                          color: Color.green, icon: "xmark.circle.fill")], emoji: "🍖",
         isFood: false, foodId: nil),
    Page(id: 6, question: "So are you a sauce type of person or a soup lover?",
         answers: [Answer(text: "Saucy", destination: 7,
                          color: Color.green, icon: "checkmark.circle.fill"),
                   Answer(text: "Soup", destination: 8,
                          color: Color.green, icon: "xmark.circle.fill")], emoji: "🥘",
         isFood: false, foodId: nil),
    Page(id: 7, question: "Which type of fresh do you prefer you, fresh salad🥒 or fresh seafood?🐟",
         answers: [Answer(text: "Salad", destination: 15, // Gado Gado
                          color: Color.green, icon: "checkmark.circle.fill"),
                   Answer(text: "Seafood", destination: 16, // Pempek
                          color: Color.green, icon: "xmark.circle.fill")], emoji: "🥗",
         isFood: false, foodId: nil),
    Page(id: 8, question: "Now then, do you prefer chicken🐔 or beef?🐮",
         answers: [Answer(text: "Chicken", destination: 17, // Soto
                          color: Color.green, icon: "checkmark.circle.fill"),
                   Answer(text: "Beef", destination: 18, // Bakso
                          color: Color.green, icon: "xmark.circle.fill")], emoji: "🍗",
         isFood: false, foodId: nil),

    ////////////////

    Page(id: 9, question: nil, answers: nil, emoji: nil,
         isFood: true, foodId: 5),
    Page(id: 10, question: nil, answers: nil, emoji: nil,
         isFood: true, foodId: 1),
    Page(id: 11, question: nil, answers: nil, emoji: nil,
         isFood: true, foodId: 9),
    Page(id: 12, question: nil, answers: nil, emoji: nil,
         isFood: true, foodId: 0),
    Page(id: 13, question: nil, answers: nil, emoji: nil,
         isFood: true, foodId: 7),
    Page(id: 14, question: nil, answers: nil, emoji: nil,
         isFood: true, foodId: 6),
    Page(id: 15, question: nil, answers: nil, emoji: nil,
         isFood: true, foodId: 8),
    Page(id: 16, question: nil, answers: nil, emoji: nil,
         isFood: true, foodId: 2),
    Page(id: 17, question: nil, answers: nil, emoji: nil,
         isFood: true, foodId: 3),
    Page(id: 18, question: nil, answers: nil, emoji: nil,
         isFood: true, foodId: 4),
  ]
}

let foods = [
  Food(id: 0, name: "Martabak", description: "Martabak is a sweet, fluffy and bouncy street food snack. It is usually topped with chocolate, nuts, and cheese. The food itself uses a ton of butter which makes it very tasty, but be careful not too eat too much. They usually sell martabak at the side of the road, especilly at night time.", emojis: ["😋", "🥞", "🧈"], img: Image(""), colors: [Color.purple, Color.yellow]),
  Food(id: 1, name: "Rendang", description: "This traditional beef dish from Minangkabau of West Sumatra is a flavor bomb and can be a bit spicy as it contains a lot of spices. The beef is usually very tender as it takes up to 5 hours to cook. Different regions may also have their own twist to the dish, making the flavor unique for each region. You can usually find Rendang all over Indonesia in various Padang restaurants.", emojis: ["🌶️", "🫶", "🥩"], img: Image(""), colors: [Color.brown, Color.red]),
  Food(id: 2, name: "Pempek", description: "", emojis: ["🐟", "👌", "🤍"], img: Image(""), colors: [Color.red, Color.black]),
  Food(id: 3, name: "Soto", description: "", emojis: ["🍲", "🌝", "🥰"], img: Image(""), colors: [Color.yellow, Color.green]),
  Food(id: 4, name: "Bakso", description: "Shaped like small ping-pong balls, Bakso are beef meatballs that is usually served together with vermicelli noodles in chicken stock soup. The meatball itself is usually cripsy on the outside and bouncy in the inside. This dish is so tasty that even Barack Obama couldn't resist eating Bakso everytime he visits Indonesia. The warm chicken broth makes this dish perfect to accompany you during a rainy day. This dish is usually sold in gerobaks that you can find at any streetside in Indonesia.", emojis: ["🍲", "🏓", "😚"], img: Image(""), colors: [Color.blue, Color.green]),
  Food(id: 5, name: "Nasi Goreng", description: "Nasi Goreng directly translates to Fried Rice. What makes this Indonesian Fried Rice special is that it uses sweet soy sauce and chilli, making the the dish sweet, savory and spicy at the same time. You can find this dish everywhere in Indonesia, but to get that authentic taste, you should try Nasi Goreng from the streetside vendors in gerobaks.", emojis: ["🍳", "🔥", "🌇"], img: Image(""), colors: [Color.red, Color.yellow]),
  Food(id: 6, name: "Nasi Uduk", description: "", emojis: ["🍚", "🥥", "🌅"], img: Image(""), colors: [Color.green, Color.purple]),
  Food(id: 7, name: "Sate Ayam", description: "", emojis: ["🔥", "🥜", "😋"], img: Image(""), colors: [Color.black, Color.blue]),
  Food(id: 8, name: "Gado Gado", description: "", emojis: ["🥜", "🥗", "😗"], img: Image(""), colors: [Color.brown, Color.green]),
  Food(id: 9, name: "Pisang Goreng", description: "", emojis: ["🍌", "🍫", "🤗"], img: Image(""), colors: [Color.purple, Color.blue]),
]
