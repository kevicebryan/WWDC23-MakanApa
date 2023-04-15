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
  let factImg: Image
}

class PageData: ObservableObject {
  @Published var foods = [
    Food(id: 0, name: "Martabak", description: "Martabak is a sweet, fluffy and bouncy street-food snack. It is usually topped with chocolate, nuts, and cheese. The food itself uses a ton of butter which makes it very tasty, but be careful not too eat too much. You can usually find martabak at the side of the road, especilly at night time.", emojis: ["😋", "🥞", "🧈"], img: Image("martabak"), colors: [Color.purple, Color.yellow],
         factImg: Image("martabakFact")),
    Food(id: 1, name: "Rendang", description: "This traditional beef dish from Minangkabau of West Sumatra is a flavor bomb and can be a bit spicy as it contains a lot of spices. The beef is usually very tender as it takes up to 5 hours to cook. Different regions may also have their own twist to the dish, making the flavor unique for each region. You can usually find Rendang all over Indonesia in various Padang restaurants.", emojis: ["🌶️", "🫶", "🥩"], img: Image("rendang"), colors: [Color.brown, Color.red],
         factImg: Image("rendangFact")),
    Food(id: 2, name: "Pempek", description: "Imagine fish meatball but better. Originally from Palembang, Sumatra, pempek are fishcakes which can be steamed or deep fried. The fishcake has various fillings and shapes, you can find curly ones, long ones, and some that are filled with eggs. The fishcake is usually served alongside a sweet and spicy vinegar called cuko.", emojis: ["🐟", "👌", "🤍"], img: Image("pempek"), colors: [Color.green, Color.blue],
         factImg: Image("pempekFact")),
    Food(id: 3, name: "Soto", description: "Soto is what you would call an Indonesian Ramen. However, unlike ramen, soto uses vermicelli instead of noodles. The soup itself is made using chicken broth and traditional indonesian spices, making the soup super aromatic and calms you down as it goes down your throat. You are also usually given a lime, which you can squeeze to add an extra acidity to the dish making it fresher.", emojis: ["🍲", "🌝", "🥰"], img: Image("soto"), colors: [Color.yellow, Color.green],
         factImg: Image("sotoFact")),
    Food(id: 4, name: "Bakso", description: "Shaped like small ping-pong balls, Bakso are beef meatballs that is usually served together with vermicelli noodles in chicken stock soup. The meatball itself is usually cripsy on the outside and bouncy in the inside. This dish is so tasty that even Barack Obama couldn't resist eating Bakso everytime he visits Indonesia. The warm chicken broth makes this dish perfect to accompany you during a rainy day. This dish is usually sold in gerobaks that you can find at any streetside in Indonesia.", emojis: ["🍲", "🏓", "😚"], img: Image("bakso"), colors: [Color.blue, Color.green],
         factImg: Image("baksoFact")),
    Food(id: 5, name: "Nasi Goreng", description: "Nasi Goreng directly translates to Fried Rice. What makes Indonesian Fried Rice special is that it uses sweet soy sauce and chilli, making the the dish sweet, savory and spicy at the same time. In addition to that, because of the technique on how its cooked, there is also a smokey flavor in the dish from the wok hei. You can find this dish everywhere in Indonesia, but to get that authentic taste, you should try Nasi Goreng from the streetside vendors in gerobaks.", emojis: ["🍳", "🔥", "🌇"], img: Image("nasiGoreng"), colors: [Color.purple, Color.yellow],
         factImg: Image("nasgorFact")),
    Food(id: 6, name: "Nasi Uduk", description: "Nasi Uduk is Indonesia's national breakfast. It is not just any normal rice, it is rice cooked with coconut milk also known as santan, making the rice even more delicious and aromatic. Various toppings can be added into your nasi uduk such as fried egg, fried vermicelli, tempe, tofu and fried shallots. Not to forget the sambal which you can mix together with the rice, and get that spicy flavor. Although most Indonesian have it for breakfast, you can often find stalls selling Nasi Uduk at night time.", emojis: ["🍚", "🥥", "🌅"], img: Image("nasiUduk"), colors: [Color.green, Color.purple],
         factImg: Image("udukFact")),
    Food(id: 7, name: "Sate Ayam", description: "If you like chared and roasted meat, sate ayam is the dish to go. You can find sate anywhere in the streetside of Indonesia, where the seller will fan the sate at their grill. Sate are chicken skewers that are served with sweet soy sauce and peanut butter sauce, giving it a sweet flavor to go alongside that chared flavor.", emojis: ["🔥", "🥜", "😋"], img: Image("sateAyam"), colors: [Color.yellow, Color.blue],
         factImg: Image("sateFact")),
    Food(id: 8, name: "Gado Gado", description: "If you love salad and vegetables, you will love this dish. Gado gado cosist of fried tofu, egg, cucumber, lettuce, long beans, bean sprouts, crackers, tempe and indonesian rice cake called lontong. What makes this salad different to any other, is that it uses peanut sauce as its dressing. All around, the dish taste fresh, savory and sweet because of the fresh veggies and the peanut sauce.", emojis: ["🥜", "🥗", "😗"], img: Image("gadoGado"), colors: [Color.brown, Color.green],
         factImg: Image("gadogadoFact")),
    Food(id: 9, name: "Pisang Goreng", description: "Deep fried banana might sound weird at first glance, but wait until you try it. Pisang goreng are battered banana which is then deep fried, making it crispy on the outside and soft on the inside. The caramelization also makes the banana sweeter and more delicious. Indonesian usually serves this with chocolate sauce or condensed milk, or you can even dip it to sambal. You can find this almost anywhere in Indonesia, as it has been a nation-wide snack.", emojis: ["🍌", "🍫", "🤗"], img: Image("pisangGoreng"), colors: [Color.purple, Color.blue],
         factImg: Image("pisangFact")),
  ]
  @Published var pages = [
    Page(id: 0, question: "For starters, do you prefer desserts over a savory meal?",
         answers: [Answer(text: "Dessert", destination: 4, color: Color.green, icon: "checkmark.circle.fill"),
                   Answer(text: "I'd like a meal please", destination: 1, color: Color.green, icon: "xmark.circle.fill")], emoji: "🍰",
         isFood: false, foodId: nil),
    Page(id: 1, question: "Indonesia has a lot of spicy food, so it's important to know if you can handle the heat?",
         answers: [Answer(text: "Yes, I can handle the heat!", destination: 2, color: Color.green, icon: "checkmark.circle.fill"),
                   Answer(text: "No, I can't handle any spice.", destination: 3, color: Color.green, icon: "xmark.circle.fill")], emoji: "🌶️",
         isFood: false, foodId: nil),
    Page(id: 2, question: "That's good, now do you like your food dry or wet, like soup or sauce?",
         answers: [Answer(text: "Dry food", destination: 9, // Nasi Goreng
                          color: Color.green, icon: "checkmark.circle.fill"),
                   Answer(text: "I prefer something with sauce or a soup", destination: 10, // Rendang
                          color: Color.green, icon: "xmark.circle.fill")], emoji: "🍛",
         isFood: false, foodId: nil),
    Page(id: 3, question: "That's completely fine, now do you like your food dry or wet, like soup or sauce?",
         answers: [Answer(text: "Dry food", destination: 5,
                          color: Color.green, icon: "checkmark.circle.fill"),
                   Answer(text: "I prefer a sauce or soup", destination: 6,
                          color: Color.green, icon: "xmark.circle.fill")], emoji: "🍛",
         isFood: false, foodId: nil),
    Page(id: 4, question: "Do you prefer something light to start the day 🌥️ or full to end the night? 🌌",
         answers: [Answer(text: "Light at daytime", destination: 11, // Pisang goreng
                          color: Color.green, icon: "checkmark.circle.fill"),
                   Answer(text: "Full for night time", destination: 12, // Martabak
                          color: Color.green, icon: "xmark.circle.fill")], emoji: "🫄",
         isFood: false, foodId: nil),
    Page(id: 5, question: "Now then, do you prefer roasted chared food🔥 or soul food?😌",
         answers: [Answer(text: "Roasted food", destination: 13, // Sate Ayam
                          color: Color.green, icon: "checkmark.circle.fill"),
                   Answer(text: "Soul food", destination: 14, // Nasi Uduk
                          color: Color.green, icon: "xmark.circle.fill")], emoji: "🍖",
         isFood: false, foodId: nil),
    Page(id: 6, question: "So are you a sauce type of person or a soup lover?",
         answers: [Answer(text: "I prefere saucy foods", destination: 7,
                          color: Color.green, icon: "checkmark.circle.fill"),
                   Answer(text: "Soup all day!", destination: 8,
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
  Food(id: 0, name: "Martabak", description: "Martabak is a sweet, fluffy and bouncy street-food snack. It is usually topped with chocolate, nuts, and cheese. The food itself uses a ton of butter which makes it very tasty, but be careful not too eat too much. You can usually find martabak at the side of the road, especilly at night time.", emojis: ["😋", "🥞", "🧈"], img: Image("martabak"), colors: [Color.purple, Color.yellow],
       factImg: Image("martabakFact")),
  Food(id: 1, name: "Rendang", description: "This traditional beef dish from Minangkabau of West Sumatra is a flavor bomb and can be a bit spicy as it contains a lot of spices. The beef is usually very tender as it takes up to 5 hours to cook. Different regions may also have their own twist to the dish, making the flavor unique for each region. You can usually find Rendang all over Indonesia in various Padang restaurants.", emojis: ["🌶️", "🫶", "🥩"], img: Image("rendang"), colors: [Color.brown, Color.red],
       factImg: Image("rendangFact")),
  Food(id: 2, name: "Pempek", description: "Imagine fish meatball but better. Originally from Palembang, Sumatra, pempek are fishcakes which can be steamed or deep fried. The fishcake has various fillings and shapes, you can find curly ones, long ones, and some that are filled with eggs. The fishcake is usually served alongside a sweet and spicy vinegar called cuko.", emojis: ["🐟", "👌", "🤍"], img: Image("pempek"), colors: [Color.green, Color.blue],
       factImg: Image("pempekFact")),
  Food(id: 3, name: "Soto", description: "Soto is what you would call an Indonesian Ramen. However, unlike ramen, soto uses vermicelli instead of noodles. The soup itself is made using chicken broth and traditional indonesian spices, making the soup super aromatic and calms you down as it goes down your throat. You are also usually given a lime, which you can squeeze to add an extra acidity to the dish making it fresher.", emojis: ["🍲", "🌝", "🥰"], img: Image("soto"), colors: [Color.yellow, Color.green],
       factImg: Image("sotoFact")),
  Food(id: 4, name: "Bakso", description: "Shaped like small ping-pong balls, Bakso are beef meatballs that is usually served together with vermicelli noodles in chicken stock soup. The meatball itself is usually cripsy on the outside and bouncy in the inside. This dish is so tasty that even Barack Obama couldn't resist eating Bakso everytime he visits Indonesia. The warm chicken broth makes this dish perfect to accompany you during a rainy day. This dish is usually sold in gerobaks that you can find at any streetside in Indonesia.", emojis: ["🍲", "🏓", "😚"], img: Image("bakso"), colors: [Color.blue, Color.green],
       factImg: Image("baksoFact")),
  Food(id: 5, name: "Nasi Goreng", description: "Nasi Goreng directly translates to Fried Rice. What makes Indonesian Fried Rice special is that it uses sweet soy sauce and chilli, making the the dish sweet, savory and spicy at the same time. In addition to that, because of the technique on how its cooked, there is also a smokey flavor in the dish from the wok hei. You can find this dish everywhere in Indonesia, but to get that authentic taste, you should try Nasi Goreng from the streetside vendors in gerobaks.", emojis: ["🍳", "🔥", "🌇"], img: Image("nasiGoreng"), colors: [Color.purple, Color.yellow],
       factImg: Image("nasgorFact")),
  Food(id: 6, name: "Nasi Uduk", description: "Nasi Uduk is Indonesia's national breakfast. It is not just any normal rice, it is rice cooked with coconut milk also known as santan, making the rice even more delicious and aromatic. Various toppings can be added into your nasi uduk such as fried egg, fried vermicelli, tempe, tofu and fried shallots. Not to forget the sambal which you can mix together with the rice, and get that spicy flavor. Although most Indonesian have it for breakfast, you can often find stalls selling Nasi Uduk at night time.", emojis: ["🍚", "🥥", "🌅"], img: Image("nasiUduk"), colors: [Color.green, Color.purple],
       factImg: Image("udukFact")),
  Food(id: 7, name: "Sate Ayam", description: "If you like chared and roasted meat, sate ayam is the dish to go. You can find sate anywhere in the streetside of Indonesia, where the seller will fan the sate at their grill. Sate are chicken skewers that are served with sweet soy sauce and peanut butter sauce, giving it a sweet flavor to go alongside that chared flavor.", emojis: ["🔥", "🥜", "😋"], img: Image("sateAyam"), colors: [Color.yellow, Color.blue],
       factImg: Image("sateFact")),
  Food(id: 8, name: "Gado Gado", description: "If you love salad and vegetables, you will love this dish. Gado gado cosist of fried tofu, egg, cucumber, lettuce, long beans, bean sprouts, crackers, tempe and indonesian rice cake called lontong. What makes this salad different to any other, is that it uses peanut sauce as its dressing. All around, the dish taste fresh, savory and sweet because of the fresh veggies and the peanut sauce.", emojis: ["🥜", "🥗", "😗"], img: Image("gadoGado"), colors: [Color.brown, Color.green],
       factImg: Image("gadogadoFact")),
  Food(id: 9, name: "Pisang Goreng", description: "Deep fried banana might sound weird at first glance, but wait until you try it. Pisang goreng are battered banana which is then deep fried, making it crispy on the outside and soft on the inside. The caramelization also makes the banana sweeter and more delicious. Indonesian usually serves this with chocolate sauce or condensed milk, or you can even dip it to sambal. You can find this almost anywhere in Indonesia, as it has been a nation-wide snack.", emojis: ["🍌", "🍫", "🤗"], img: Image("pisangGoreng"), colors: [Color.purple, Color.blue],
       factImg: Image("pisangFact")),
]
