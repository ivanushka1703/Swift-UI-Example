//
//  ContentView.swift
//  Swift UI Example
//
//  Created by Ivan Ivanchenko on 17.01.2021.
//

import SwiftUI

struct ContentView: View {
    var tutors: [Tutor] = []
    
    var body: some View {
        NavigationView {
            List(tutors) { tutor in
                TutorCell(tutor: tutor)
            }.navigationBarTitle(Text("Tutors"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(tutors: testData)
    }
}

struct TutorCell: View {
    let tutor: Tutor
    var body: some View {
        NavigationLink(destination: TutorDetail(name: tutor.name, headline: tutor.headline, bio: tutor.bio)) {
            Image(tutor.imageName)
                .cornerRadius(10)
            VStack(alignment: .leading) {
                Text(tutor.name)
                    .fontWeight(.bold)
                Text(tutor.headline)
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
            }
        }
    }
}
