//
//  Car.swift
//  SwiftUI_01
//
//  Created by Eunsung on 7/24/24.
//

import SwiftUI

struct Car : Codable, Identifiable {
    var id: String
    var name: String
    
    var description: String
    var isHybrid: Bool
    
    var imageName: String
}
