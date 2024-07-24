//
//  SeconeView.swift
//  SwiftUI_01
//
//  Created by Eunsung on 7/24/24.
//

import SwiftUI

struct SeconeView: View {
    
    @EnvironmentObject var timerData: TimerData
    
    var body: some View {
        
        VStack {
            Text("Second View")
                .font(.largeTitle)
            Text("Timer Count = \(timerData.timeCount)")
                .font(.headline)
        }
        .padding()
    }
}
