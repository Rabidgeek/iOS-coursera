//
//  GestureRecognizer.swift
//  Functions & Callbacks
//
//  Created by RabidGeek on 12/15/23.
//

import SwiftUI

struct GestureRecognizer: View {
    @State private var flag = false
    
    var body: some View {
        Text("Tap Me!")
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding(15)
            .background(flag ? Color.green : Color.purple)
            .onTapGesture {
                flag.toggle()
            }
    }
}

struct GestureRecognizer_Previews: PreviewProvider {
    static var previews: some View {
        GestureRecognizer()
    }
}
