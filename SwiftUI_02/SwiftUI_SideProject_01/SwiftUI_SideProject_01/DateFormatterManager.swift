//
//  DateFormatterManager.swift
//  SwiftUI_SideProject_01
//
//  Created by Eunsung on 7/26/24.
//

import Foundation

class DateFormatterManager {
    static let shared: DateFormatterManager = DateFormatterManager()
    
    func dateFormatter(date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        return dateFormatter.string(from: date)
    }
}
