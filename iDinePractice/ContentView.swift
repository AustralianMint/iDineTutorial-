//
//  ContentView.swift
//  iDinePractice
//
//  Created by Thomas Frey on 29.03.23.
//

import SwiftUI

struct ContentView: View {
    
    //save info from json in a constant
    let thisIsGreatMenu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    
    var body: some View {
        NavigationStack {
            List {
                //Nested ForEach Loop filling struct w/ json data
                ForEach(thisIsGreatMenu) { section in
                    Section(section.name) {
                        ForEach(section.items) { item in
                            Text(item.name)
                        }
                    }
                }
            }
            .navigationTitle("Json List")
            .listStyle(.grouped)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
