//
//  ContentView.swift
//  TravelWallet
//
//  Created by 이빈 on 11/3/24.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    TabView {
      PayView()
        .tabItem {
          Image(systemName: "creditcard.fill")
          Text("페이")
        }
      
      PayView()
        .tabItem {
          Image(systemName: "dollarsign.circle.fill")
          Text("송금")
        }
      
      PayView()
        .tabItem {
          Image(systemName: "bag.fill")
          Text("직구")
        }
      
      PayView()
        .tabItem {
          Image(systemName: "sun.max.fill")
          Text("여행")
        }
      
      PayView()
        .tabItem {
          Image(systemName: "person.fill")
          Text("마이")
        }
    }
    .background(Color.white)
    .tint(Color("CustomBlue"))
  }
}



#Preview {
  ContentView()
}
