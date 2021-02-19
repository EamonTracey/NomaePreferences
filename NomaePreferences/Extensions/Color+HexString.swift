//
//  Color+HexString.swift
//  NomaePreferences
//
//  Created by Eamon Tracey.
//

import SwiftUI

extension Color {
    
    init?(hexString: String) {
        var hexString = hexString
        if hexString.count < 1 { return nil }
        if hexString.first != "#" { return nil }
        hexString.removeFirst()
        let split = hexString.split(separator: ":")
        guard let first = split.first else { return nil }
        if first.count != 6 { return nil }
        var rgb: UInt64 = 0
        Scanner(string: String(first)).scanHexInt64(&rgb)
        let last = split.last ?? "1.0"
        guard let opacity = Double(String(last)) else { return nil }
        self.init(
            red: Double((rgb & 0xFF0000) >> 16) / 255.0,
            green: Double((rgb & 0x00FF00) >> 8) / 255.0,
            blue: Double(rgb & 0x0000FF) / 255.0,
            opacity: opacity
        )
    }
    
}
