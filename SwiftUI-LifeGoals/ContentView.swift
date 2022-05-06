//
//  ContentView.swift
//  SwiftUI-LifeGoals
//
//  Created by tobi adegoroye on 25/04/2022.
//

import SwiftUI
import CoreData

struct SegmentedControl: View {
    @State private var favoriteColor = 0

    var body: some View {
      
    }
}
    


 
struct ContentView: View {
    var body: some View {
        NavigationView {
            Text("")

            .navigationBarTitle("Life Goals")
            .navigationBarItems(trailing:
                Button(action: {
                    print("Edit button pressed...")
                }) {
                    Image(systemName: "plus").accentColor(.purple).frame(width: 100, height: 100, alignment: .trailing)
                }
            )

         }
        VStack {
            Picker("What is your favorite color?", selection: $favoriteColor) {
                Text("Red").tag(0)
                Text("Green").tag(1)
                Text("Blue").tag(2)
            }
            .pickerStyle(.segmented)

            Text("Value: \(favoriteColor)")
        }
       }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

 
