//
//  ContentView.swift
//  SwiftUI_01
//
//  Created by Eunsung on 7/22/24.
//

import SwiftUI
import Combine

struct ContentView: View {
    
    @ObservedObject var carStore: CarStore = CarStore(cars: carData)
    
    var body: some View {
        NavigationView {
            List {
                ForEach(carStore.cars) { car in
                    ListCell(car: car)
                }
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ListCell: View {
    
    var car: Car
    
    var body: some View {
        NavigationLink(destination: CarDetail(selectedCar: car)) {
            HStack {
                Image(car.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 60)
                Text(car.name)
            }
        }
    }
}
