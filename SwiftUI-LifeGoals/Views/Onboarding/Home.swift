//
//  Home.swift
//  SwiftUI-LifeGoals
//
//  Created by tobi adegoroye on 14/05/2022.
//

import SwiftUI



struct Home: View {
    @AppStorage("currentPage") var currentPage = 1

    var body: some View {
        Text("Welcome To Home!!!")
            .font(.title)
            .fontWeight(.heavy)
         
    }
}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
