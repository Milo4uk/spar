//
//  InitialScreen.swift
//  Spar
//
//  Created by Mila ✨ on 14.08.2023.
//

import SwiftUI

struct InitialScreen: View {
    var body: some View {
        TabView {
            MainScreen()
            .tabItem {
                Image("spar-logo1")
                    .resizable()
                Text("Главная")
            }
            
            MainScreen()
            .tabItem {
                Image(systemName: "square.grid.2x2.fill")
                Text("Категории")
            }
            
            MainScreen()
            .tabItem {
                Image(systemName: "cart.fill")
                Text("Корзина")
            }
            
            MainScreen()
            .tabItem {
                Image(systemName: "person.fill")
                Text("Профиль")
            }
        }
    }
}

struct InitialScreen_Previews: PreviewProvider {
    static var previews: some View {
        InitialScreen()
    }
}
