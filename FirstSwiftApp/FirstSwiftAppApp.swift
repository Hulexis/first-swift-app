//
//  FirstSwiftAppApp.swift
//  FirstSwiftApp
//
//  Created by Arne Johannesen on 14/10/2022.
//

import SwiftUI

@main
struct FirstSwiftAppApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
