//
//  ContentView.swift
//  SwiftUI-LifeGoals
//
//  Created by tobi adegoroye on 14/05/2022.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("currentPage") var currentPage = 1
    var body: some View {
        if currentPage > totalPages {
            Home()
        } else {
            WalkthroughScreen()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
