//
//  SwiftUI_LifeGoalsApp.swift
//  SwiftUI-LifeGoals
//
//  Created by tobi adegoroye on 25/04/2022.
//

import SwiftUI

@main
struct SwiftUI_LifeGoalsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
