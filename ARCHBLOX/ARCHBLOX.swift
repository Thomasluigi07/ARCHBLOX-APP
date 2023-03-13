//
//  ARCHBLOX.swift
//  ARCHBLOX
//
//  Created by Thomas G on 13/3/2023.
//

import SwiftUI

@main
struct ARCHBLOX: App {
    var body: some Scene {
        WindowGroup {
            MainView().edgesIgnoringSafeArea(.top).frame(minWidth: 400, maxWidth: .infinity, minHeight: 300, maxHeight: .infinity)
        }.windowStyle(HiddenTitleBarWindowStyle())
    }
}
