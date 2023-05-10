//
//  FitnessAppApp.swift
//  FitnessApp
//
//  Created by Jeremy Jackman on 3/27/23.
//

import SwiftUI
import Firebase

@main
struct FitnessAppApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
  
    var body: some Scene {
        WindowGroup {
            FirstLaunchView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        
        return true
    }
}
