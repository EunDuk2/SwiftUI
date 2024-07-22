//
//  ContentView.swift
//  SwiftUI_01
//
//  Created by Eunsung on 7/22/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: {
            onButton()
        }, label: {
            /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
        })
    }
    func onButton() {
        print("Button Click!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
