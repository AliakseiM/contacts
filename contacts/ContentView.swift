//
//  ContentView.swift
//  contacts
//
//  Created by Алексей Михайловский on 28.11.21.
//

import SwiftUI

struct ContentView: View {
    var tutors: [Tutor] = []
    
    var body: some View {
        List(tutors) { tutor in
            Image(tutor.imageName)
            VStack(alignment: .leading) {
                Text(tutor.name)
                Text(tutor.headline)
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView(tutors: testData)
    }
}
#endif
