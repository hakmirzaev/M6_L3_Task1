//
//  M6_L3_Task1App.swift
//  M6_L3_Task1
//
//  Created by Bekhruz Hakmirzaev on 01/12/22.
//

import SwiftUI

@main
struct M6_L3_Task1App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainScreen()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
