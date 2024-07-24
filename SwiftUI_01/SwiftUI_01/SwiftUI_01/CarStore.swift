//
//  CarStore.swift
//  SwiftUI_01
//
//  Created by Eunsung on 7/24/24.
//

import SwiftUI
import Combine

class CarStore: ObservableObject {
    
    @Published var cars: [Car]
    
    init (cars: [Car] = []) {
        self.cars = cars
    }
}
