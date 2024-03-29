//
//  SwiftUI_TutorialsApp.swift
//  SwiftUI-Tutorials
//
//  Created by Tyler Inari on 2022/01/08.
//

import SwiftUI

@main
struct SwiftUI_TutorialsApp: App {
    let persistenceController = PersistenceController.shared
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(modelData)
        }
    }
}
