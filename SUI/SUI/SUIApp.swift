//
//  SUIApp.swift
//  SUI
//
//  Created by Vladyslav Zubkov on 08.03.2021.
//

import SwiftUI

@main
struct SUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Router())
                .environmentObject(ListScreenViewModel())
        }
    }
}
