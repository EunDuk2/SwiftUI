//
//  ContentView.swift
//  SwiftUI_01
//
//  Created by Eunsung on 7/22/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var wifiEnabled = true
    @State private var userName = ""
    
    var body: some View {
        VStack {
            
            TextField("Enter user name", text: $userName)
            Text(userName)
            
            Toggle(isOn: $wifiEnabled, label: {
                Text("Enable WiFi")
            })
            WifiImageView(wifiEnabled: $wifiEnabled)
            
//            Text(wifiEnabled ? "on" : "off")
//            Image(systemName: wifiEnabled ? "wifi" : "wifi.slash")
        }
    }
}

struct WifiImageView: View {
    
    @Binding var wifiEnabled: Bool
    
    var body: some View {
        VStack {
            Text(wifiEnabled ? "on" : "off")
            Image(systemName: wifiEnabled ? "wifi" : "wifi.slash")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
