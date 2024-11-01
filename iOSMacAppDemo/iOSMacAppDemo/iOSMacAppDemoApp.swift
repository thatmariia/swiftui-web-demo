//
//  iOSMacAppDemoApp.swift
//  iOSMacAppDemo
//
//  Created by Mariia Steeghs-Turchina on 31/10/2024.
//

import SwiftUI
import SharedUIComponentsDemo

@main
struct iOSMacAppDemoApp: App {
    var body: some Scene {
        WindowGroup {
            SharedContentView(viewModel: 5)
        }
    }
}
