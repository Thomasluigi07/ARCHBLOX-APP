//
//  ARCHBLOXLauncher.swift
//  ARCHBLOXLauncher
//
//  Created by Thomas G on 30/3/2023.
//

import SwiftUI

@main
struct ARCHBLOXLauncher: App {
    var body: some Scene {
        WindowGroup {
            Form1().frame(minWidth: 400, maxWidth: 400, minHeight: 300, maxHeight: 300).edgesIgnoringSafeArea(.top)
        }.windowStyle(HiddenTitleBarWindowStyle()).commands {
            CommandGroup(replacing: CommandGroupPlacement.newItem) {};
        };
    }
}
