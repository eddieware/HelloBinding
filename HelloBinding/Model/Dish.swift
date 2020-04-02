//
//  Dish.swift
//  HelloBinding
//
//  Created by EDUARDO MEJIA on 01/04/20.
//  Copyright © 2020 EDDIEWARE. All rights reserved.
//

import Foundation
import SwiftUI

struct Dish: Identifiable {
    let id = UUID()
    let name: String
    let imageURL: String
    let isSpicy: Bool
    
}



extension Dish {

    static func all() -> [Dish] {
        return[
        Dish(name: "Kung Pow CHicken", imageURL: "kungpow", isSpicy: true),
        Dish(name: "Sweet and Sour Chicken", imageURL: "sweet", isSpicy: false),
        Dish(name: "Spyci Red Chicken", imageURL: "spicy", isSpicy: true)
        
        ]
}
}
