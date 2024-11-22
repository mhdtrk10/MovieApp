//
//  MovieAppApp.swift
//  MovieApp
//
//  Created by Mehdi Oturak on 22.11.2024.
//

import SwiftUI

@main
struct MovieAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
