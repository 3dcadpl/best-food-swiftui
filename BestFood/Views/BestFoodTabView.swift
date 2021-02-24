//
//  BestFoodTabView.swift
//  BestFood
//
//  Created by Łukasz Andrzejewski on 16/02/2021.
//

import SwiftUI

struct BestFoodTabView: View {
    
    @EnvironmentObject var settings: SettingsModel
    
    var body: some View {
        TabView {
            FoodListView(viewModel: FoodListViewModel(foodService: HttpFoodService(), settings: settings))
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Food")
                }
            OrderView(viewModel: OrderViewModel())
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                }
            ProfileView(viewModel: ProfileViewModel())
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
        .accentColor(.primary)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        BestFoodTabView()
    }
    
}
