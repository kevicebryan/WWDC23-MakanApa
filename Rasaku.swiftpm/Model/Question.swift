//
//  Question.swift
//  Rasaku
//
//  Created by Kevin Bryan on 31/03/23.
//

import Foundation
import SwiftUI

struct Page {
  let id: Int
  let question: String?
  let answers: [Answer]?
  let emoji: String?
  let isFood: Bool
  let foodId: Int?
}

struct Answer {
  let text: String
  let destination: Int
  let color: Color
  let icon: String?
}

let pages = [
  Page(id: 0, question: "For starters, are you a dessert type of person \n or do you prefer a savory meal?",
       answers: [Answer(text: "Dessert", destination: 4, color: Color.green, icon: "checkmark.circle.fill"),
                 Answer(text: "I'd like a meal please", destination: 1, color: Color.green, icon: "xmark.circle.fill")], emoji: "🍰",
       isFood: false, foodId: nil),
  Page(id: 1, question: "Indonesia has a lot of spicy food, so it's important to know if you can handle the heat?",
       answers: [Answer(text: "Yes, I can handle the heat!", destination: 2, color: Color.green, icon: "checkmark.circle.fill"),
                 Answer(text: "No, I can't handle any spice.", destination: 3, color: Color.green, icon: "xmark.circle.fill")], emoji: "🌶️",
       isFood: false, foodId: nil),
  Page(id: 2, question: "That's good to know, now I need to know if you prefer dry food or wet food like a soup/sauce?",
       answers: [Answer(text: "Dry food", destination: 10, // Nasi Goreng
                        color: Color.green, icon: "checkmark.circle.fill"),
                 Answer(text: "I prefer something with sauce or a soup", destination: 11, // Rendang
                        color: Color.green, icon: "xmark.circle.fill")],
       emoji: "🍤 / 🍲",
       isFood: false, foodId: nil),
  Page(id: 3, question: "That's completely fine, now I need to know if you prefer dry food or wet food like a soup/sauce?",
       answers: [Answer(text: "Dry food", destination: 5,
                        color: Color.green, icon: "checkmark.circle.fill"),
                 Answer(text: "I prefer something with sauce or a soup", destination: 6,
                        color: Color.green, icon: "xmark.circle.fill")],
       emoji: "🍤 / 🍲",
       isFood: false, foodId: nil),
  Page(id: 4, question: "Do you prefer something light to start the day, or full to end the day?",
       answers: [Answer(text: "Light", destination: 11, // Pisang goreng
                        color: Color.green, icon: "checkmark.circle.fill"),
                 Answer(text: "Full", destination: 12, // Martabak
                        color: Color.green, icon: "xmark.circle.fill")], emoji: "🫃",
       isFood: false, foodId: nil),
  Page(id: 5, question: "Now then, do you prefer roasted chared food or a more of a soul food?",
       answers: [Answer(text: "Roasted food", destination: 13, // Iga bakar
                        color: Color.green, icon: "checkmark.circle.fill"),
                 Answer(text: "Soul food", destination: 14, // Nasi Uduk
                        color: Color.green, icon: "xmark.circle.fill")], emoji: "🍖 / 😌",
       isFood: false, foodId: nil),
  Page(id: 6, question: "So are you a sauce type of person or a soup lover?",
       answers: [Answer(text: "Saucy", destination: 7,
                        color: Color.green, icon: "checkmark.circle.fill"),
                 Answer(text: "Soup", destination: 8,
                        color: Color.green, icon: "xmark.circle.fill")], emoji: "🥘 / 🍜",
       isFood: false, foodId: nil),
  Page(id: 7, question: "Which type of fresh are you, fresh salad or fresh seafood?",
       answers: [Answer(text: "Salad", destination: 15, // Gado Gado
                        color: Color.green, icon: "checkmark.circle.fill"),
                 Answer(text: "Seafood", destination: 16, // Pempek
                        color: Color.green, icon: "xmark.circle.fill")], emoji: "🥗 / 🐟",
       isFood: false, foodId: nil),
  Page(id: 8, question: "Now then, do you prefer chicken or beef?",
       answers: [Answer(text: "Chicken", destination: 17, // Soto
                        color: Color.green, icon: "checkmark.circle.fill"),
                 Answer(text: "Beef", destination: 18, // Bakso
                        color: Color.green, icon: "xmark.circle.fill")], emoji: "🍗 / 🍖",
       isFood: false, foodId: nil),
  Page(id: 9, question: nil,
       answers: nil, emoji: nil,
       isFood: true, foodId: 5),
  Page(id: 10, question: nil,
       answers: nil, emoji: nil,
       isFood: true, foodId: 1),
  Page(id: 11, question: nil,
       answers: nil, emoji: nil,
       isFood: true, foodId: 9),
  Page(id: 12, question: nil,
       answers: nil, emoji: nil,
       isFood: true, foodId: 0),
  Page(id: 13, question: nil,
       answers: nil, emoji: nil,
       isFood: true, foodId: 7),
  Page(id: 14, question: nil,
       answers: nil, emoji: nil,
       isFood: true, foodId: 6),
  Page(id: 15, question: nil,
       answers: nil, emoji: nil,
       isFood: true, foodId: 8),
  Page(id: 16, question: nil,
       answers: nil, emoji: nil,
       isFood: true, foodId: 2),
  Page(id: 17, question: nil,
       answers: nil, emoji: nil,
       isFood: true, foodId: 3),
  Page(id: 18, question: nil,
       answers: nil, emoji: nil,
       isFood: true, foodId: 4),
]
