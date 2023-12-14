//
//  SwiftUIView.swift
//  frames
//
//  Created by RabidGeek on 12/14/23.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
                .padding()
            HStack {
                Button("One") {}
                Button("Two") {}
                Button("Three") {}
            }
        }
        .frame(width: 300, alignment: .leading)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
