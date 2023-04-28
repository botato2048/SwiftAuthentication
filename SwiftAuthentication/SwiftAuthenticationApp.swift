//
//  SwiftAuthenticationApp.swift
//  SwiftAuthentication
//
//  Created by em on 2023-04-28.
//

import Firebase
import SwiftUI

@main
 
struct SwiftAuthenticationApp: App {
	@UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
	
	init() {
		
		//FirebaseApp.configure()
	//	print("config faite")
		
	}

	

		var body: some Scene {
			WindowGroup {
				NavigationStack{
					AuthVIew()
					
				}
				ContentView()
			}
		}
	
}
class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
				   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
	FirebaseApp.configure()
	  print("config faite")
	return true
  }
}
