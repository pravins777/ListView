//
//  ContentView.swift
//  SwiftUI
//
//  Created by Nykaa on 24/01/20.
//  Copyright © 2020 NykaaFashion. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    var categories: [String: [Drink]] {
        .init(grouping: drinkData,
              by: {$0.category.rawValue}
        )
    }
    
    var body: some View {

        let keys = self.categories.map{$0.key}
        
        return NavigationView {
            List {
                ForEach(keys.indices) {index in
                    DrinkRow(categorName: "\(keys[index].uppercased()) DRINKS", drinks: self.categories[keys[index]]!)
                        .frame(height:320)
                        .padding(.top)
                        .padding(.bottom)
                }

            }.navigationBarTitle(Text("COFFEE DB"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
