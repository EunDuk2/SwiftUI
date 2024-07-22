//
//  ContentView.swift
//  SwiftUI_01
//
//  Created by Eunsung on 7/22/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        VStack {
//            Text("Text 1")
//                .foregroundColor(.red)
//                .font(.largeTitle)
//            Text("Text 2")
//                .foregroundColor(.red)
//                .font(.largeTitle)
//            Text("Text 3")
//                .foregroundColor(.green)
//                .font(.largeTitle)
//            Text("Text 4")
//                .foregroundColor(.green)
//                .font(.largeTitle)
//        }
        VStack {
            MyVStack(color: .red) {
                Text("Text 1")
                Text("Text 2")
            }
            MyVStack(color: .green) {
                Text("Text 3")
                Text("Text 4")
            }
        }
    }
}

struct MyVStack<Content: View>: View {
    let content: () -> Content
    let color: Color
    
    init(color: Color, @ViewBuilder content: @escaping () -> Content) {
        self.content = content
        self.color = color
    }
    var body: some View {
        VStack {
            content()
        }
        .font(.largeTitle)
        .foregroundColor(color)
    }
}

//struct MyVStack<Content>: View {
//    let content: () -> Content
//    let color: Color
//    let font: Font
//    
//    init(@ViewBuilder content: @escaping () -> Content, color: Color, font: Font) {
//        self.content = content
//        self.color = color
//        self.font = font
//    }
//    
//    var body: some View {
//        VStack {
//            content()
//                .foregroundColor(color)
//                .font(font)
//        }
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
