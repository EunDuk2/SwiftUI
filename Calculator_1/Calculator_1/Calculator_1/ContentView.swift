//
//  ContentView.swift
//  Calculator_1
//
//  Created by EUNSUNG on 11/5/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack {
                Text("12,345")
                    .frame(width: 360, height: 240, alignment: .bottomTrailing)
                    .foregroundColor(.white)
//                    .background(.red)
                    .font(.system(size: 90))
                
                Spacer()
                
                VStack {
                    HStack {
                        Button1(action: { }, number: "C", backgoundColor: .whiteGray, foregroundColor: .black)
                        Button1(action: { }, number: "±", backgoundColor: .whiteGray, foregroundColor: .black)
                        Button1(action: { }, number: "%", backgoundColor: .whiteGray, foregroundColor: .black)
                        Button1(action: { }, number: "÷", backgoundColor: .lightOrange)
                    }
                    HStack {
                        Button1(action: { }, number: "7", backgoundColor: .spaceGray)
                        Button1(action: { }, number: "8", backgoundColor: .spaceGray)
                        Button1(action: { }, number: "9", backgoundColor: .spaceGray)
                        Button1(action: { }, number: "×", backgoundColor: .lightOrange)
                    }
                    HStack {
                        Button1(action: { }, number: "4", backgoundColor: .spaceGray)
                        Button1(action: { }, number: "5", backgoundColor: .spaceGray)
                        Button1(action: { }, number: "6", backgoundColor: .spaceGray)
                        Button1(action: { }, number: "ー", backgoundColor: .lightOrange)
                    }
                    HStack {
                        Button1(action: { }, number: "3", backgoundColor: .spaceGray)
                        Button1(action: { }, number: "2", backgoundColor: .spaceGray)
                        Button1(action: { }, number: "1", backgoundColor: .spaceGray)
                        Button1(action: { }, number: "＋", backgoundColor: .lightOrange)
                    }
                    HStack {
                        Button1(action: { }, number: "0", backgoundColor: .spaceGray, width: 144, alignment: .leading)
                        Button1(action: { }, number: ".", backgoundColor: .spaceGray)
                        Button1(action: { }, number: "=", backgoundColor: .lightOrange)
                    }
                }
                Spacer()
            }
            
        }
    }
}

struct Button1: View {
    var action: () -> ()
    var number: String
    var backgoundColor: Color
    var foregroundColor: Color = .white
    var width: Double = 48
    var alignment: Alignment = .center
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            Text(number)
                .frame(width: width, height: 48, alignment: alignment)
                .padding(20)
                .background(backgoundColor)
                .cornerRadius(100)
                .foregroundColor(foregroundColor)
                .font(.system(size: 40))
                
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
