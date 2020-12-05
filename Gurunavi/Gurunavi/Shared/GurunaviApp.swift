//
//  GurunaviApp.swift
//  Gurunavi
//
//  Created by Vladimir Rogozhkin on 2020/12/03.
//

import SwiftUI

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        Logger.setup()
        return true
    }
}

@main
struct GurunaviApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
