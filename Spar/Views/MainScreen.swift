//
//  HomeView.swift
//  Spar
//
//  Created by Mila ✨ on 14.08.2023.
//

import SwiftUI

struct MainScreen: View {
    @State var textfieldtext: String = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                GeometryReader { geometry in
                    Text(textfieldtext)
                        .toolbar {
                            ToolbarItem(placement: .navigationBarLeading) {
                                SearchBar(textfieldtext: $textfieldtext)
                                    .frame(width: geometry.size.width - 40)
                            }
                        }
                    HStack {

                    }
                }
            }
        }
    }
}

struct SearchBar: View {
    @Binding var textfieldtext: String
    
    var body: some View {
        HStack {
            TextField("Поиск", text: $textfieldtext)
                .padding(7)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(30)
                .overlay(alignment: .trailing) {
                    Image(systemName: "magnifyingglass")
                        .padding()
                }
            
            Image(systemName: "line.3.horizontal")
        }

    }
}

struct MainScreen_Previews: PreviewProvider {
    
    static var previews: some View {
        MainScreen()
    }
}
