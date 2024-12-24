//
//  FitnessAppApp.swift
//  FitnessApp
//
//  Created by Ербол on 24.12.2024.
//

import SwiftUI

@main
struct FitnessAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            FitnessTabView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
