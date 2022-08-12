//
//  VPNApp.swift
//  VPN
//
//  Created by PDWS on 8/12/22.
//

import SwiftUI

@main
struct VPNApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
