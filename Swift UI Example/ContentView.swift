//
//  ContentView.swift
//  Swift UI Example
//
//  Created by Ivan Ivanchenko on 17.01.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
            Image(systemName: "photo")
            VStack(alignment: .leading) {
                Text("Michael Bulgakov")
                    .fontWeight(.bold)
                Text("The Master and Margarita")
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
