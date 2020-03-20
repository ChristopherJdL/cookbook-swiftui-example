//
//  ContentView.swift
//  Boeuf
//
//  Created by Christopher Jamme de Lagoutine on 18/03/2020.
//  Copyright © 2020 Christopher Jamme de Lagoutine. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView() {
            VStack() {
                RecipeView()
                
                Text("On cuisine ?")
                    .font(.largeTitle)
                    .foregroundColor(.purple)
                    .padding(20)
                
                GoButton()
            }.navigationBarTitle("Boeuf bourguignon")
        }
    }


}


struct GoButton: View {
    var body: some View {
        Button(action: printAsuna){
            Text("go 🦑")
                .font(.title)
                .fontWeight(.black)
        }
        .frame(width: 100, height: 100)
        .background(Color.purple)
        .foregroundColor(.white)
        .cornerRadius(100)
    }
    func printAsuna() {
        print("asuna")
    }
}

struct RecipeView: View {
    let recipe : [String] = ["🥕 Carotte", "🍅 Tomate", "🥩 Boeuf", "🍷 Vin", "🧂 Sel"]
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(recipe, id: \.self) { item in
                Text(item)
            }
        }
        .font(.title)
        .foregroundColor(.orange)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
