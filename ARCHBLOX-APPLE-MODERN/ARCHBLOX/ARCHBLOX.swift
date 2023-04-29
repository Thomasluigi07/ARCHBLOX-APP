//
//  ARCHBLOX.swift
//  ARCHBLOX
//
//  Created by Thomas G on 13/3/2023.
//

import SwiftUI

@main


struct ARCHBLOX: App {
    #if os(macOS)
        var body: some Scene {
            WindowGroup {
                MainView().frame(minWidth: 400, maxWidth: .infinity, minHeight: 300, maxHeight: .infinity).edgesIgnoringSafeArea(.top)
            }.windowStyle(HiddenTitleBarWindowStyle());
        }
    #else
        var body: some Scene {
            WindowGroup {
                LoadingScreen()
            }
        }
    #endif
}

