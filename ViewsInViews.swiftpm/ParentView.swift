//
//  ParentView.swift
//  ViewsInViews
//
//  Created by RabidGeek on 12/14/23.
//

import SwiftUI

struct ParentView: View {
    var body: some View {
        HStack {
            Rectangle()
                .fill(Color.blue)
                .frame(width: 50, height: 50)
            
            Text("Rectangle One")
                .foregroundColor(.white)
                .padding(20)
                .background(Color.red)
            
            Rectangle()
                .fill(Color.purple)
                .frame(width: 100, height: 30)
        }
    }
}

struct ParentView_Previews: PreviewProvider {
    static var previews: some View {
        ParentView()
    }
}
