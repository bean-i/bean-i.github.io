//
//  TravelWalletApp.swift
//  TravelWallet
//
//  Created by 이빈 on 11/3/24.
//

import SwiftUI

@main
struct TravelWalletApp: App {
  
  init() {
    UITabBarItem.appearance().setTitleTextAttributes([.font: UIFont.systemFont(ofSize: 14)], for: .normal)
    UITabBar.appearance().backgroundColor = UIColor.white
    UITabBar.appearance().isTranslucent = false
  }
  
  var body: some Scene {
    WindowGroup {
      ContentView()
    }
  }
}
