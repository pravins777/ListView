//
//  Drink.swift
//  SwiftUI
//
//  Created by Nykaa on 24/01/20.
//  Copyright © 2020 NykaaFashion. All rights reserved.
//

import SwiftUI

struct Drink: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var imageName: String
    var category: Category
    var description: String
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case hot = "hot"
        case cold = "cold"
    }
}
