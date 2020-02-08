//
//  DrinkRow.swift
//  FirstProject
//
//  Created by Nykaa on 24/01/20.
//  Copyright © 2020 NykaaFashion. All rights reserved.
//

import SwiftUI

struct DrinkRow: View {
    
    var categorName: String
    var drinks: [Drink]
    
    var body: some View {
        
        
        VStack(alignment: .leading) {
            
            Text(categorName)
                .font(.title)
            
            ScrollView(Axis.Set.horizontal, showsIndicators: false) {
                HStack(alignment: .top) {
                    ForEach(self.drinks) { drink in
                        DrinkItem(drink: drink)
                            .frame(width: 300)
                            .padding(.trailing, 30)
                    }
                }
            }
        }
    }
}

struct DrinkRow_Previews: PreviewProvider {
    static var previews: some View {
        DrinkRow(categorName: "Hot Drinks", drinks: drinkData)
    }
}
