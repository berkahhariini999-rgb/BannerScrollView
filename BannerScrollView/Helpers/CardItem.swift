//
//  CardItem.swift
//  BannerScrollView
//
//  Created by Iqbal Alhadad on 26/12/25.
//

import SwiftUI
import Foundation

struct CardItem: Identifiable, Hashable {
    let id = UUID()
    let imageName: String
    let title: String
    let description: String
}

let cardItems: [CardItem] = [
    CardItem (
        imageName: "n1",
        title: "Mount Bromo, East Java",
        description: "Mount Bromo is not as big as other volcanoes in Indonesia but the view of Bromo is amazing. The magnificent beauty of Mount Bromo makes tourists amazed."
    ),
    CardItem (
        imageName: "n2",
        title: "Kapas Biru Waterfall, East Java",
        description: "Kapas Biru Waterfall in English translates to Blue Cotton Waterfall, named for the bluish, cotton-like appearance of its cascading water against orange cliffs."
    ),
    CardItem (
        imageName: "n3",
        title: "Nusa Penida Beach, East Java",
        description: "Nusa Penida is an island located southeast of Bali, Indonesia, forming part of Bali's Klungkung Regency, known for its dramatic cliffs, pristine beaches, and world-class diving, accessible by a short boat ride from Bali's mainland."
    )
    
    
]
