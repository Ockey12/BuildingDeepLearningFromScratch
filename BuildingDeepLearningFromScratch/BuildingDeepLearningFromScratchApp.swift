//
//  BuildingDeepLearningFromScratchApp.swift
//  BuildingDeepLearningFromScratch
//
//  Created by オナガ・ハルキ on 2021/10/06.
//

import SwiftUI

@main
struct BuildingDeepLearningFromScratchApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
