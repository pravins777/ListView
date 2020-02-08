//
//  DrinkItem.swift
//  FirstProject
//
//  Created by Nykaa on 24/01/20.
//  Copyright © 2020 NykaaFashion. All rights reserved.
//

import SwiftUI

struct DrinkItem: View {
    let drink: Drink
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            
            Image(drink.imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 170)
                .cornerRadius(10)
                .shadow(radius: 10)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(drink.name)
                    .foregroundColor(.primary)
                    .font(.headline)
                
                Text(drink.description)
                    .foregroundColor(.secondary)
                    .font(.subheadline)
                    .lineLimit(.max)
                    .multilineTextAlignment(.leading)
            }

            
            
        }
    }
}

struct DrinkItem_Previews: PreviewProvider {
    static var previews: some View {
        DrinkItem(drink: drinkData[0])
    }
}
