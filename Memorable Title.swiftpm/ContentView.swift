import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Exercise 1")
                NavigationLink(destination: MyTabView()){
                    Text("Do Something")
                }
            }
            .navigationTitle("Little Lemon")
        }
    }
}
