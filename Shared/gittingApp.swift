//
//  gittingApp.swift
//  Shared
//
//  Created by 清水健司 on 2022/08/13.
//

import SwiftUI

@main
struct gittingApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
