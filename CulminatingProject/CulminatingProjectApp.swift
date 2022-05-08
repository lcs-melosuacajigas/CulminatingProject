//
//  CulminatingProjectApp.swift
//  CulminatingProject
//
//  Created by Mateo Elosua on 2022-05-08.
//

import SwiftUI

@main
struct CulminatingProjectApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                TabView {
                    ContentView()
                        .tabItem {
                            Image(systemName: "note.text")
                        }
                    TimeView()
                        .tabItem {
                            Image(systemName: "clock")
                        }
                }
            }
        }
    }
}
