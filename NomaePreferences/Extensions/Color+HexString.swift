//
//  Color+HexString.swift
//  NomaePreferences
//
//  Created by Eamon Tracey.
//  Copyright © 2021 Eamon Tracey. All rights reserved.
//

import SwiftUI

public extension Color {
    
    /// Initialize a `Color` with a hex string of format `#000000:1.0`
    init?(hexString: String) {
        var hexString = hexString
        guard hexString.first == "#" else { return nil }
        hexString.removeFirst()
        let split = hexString.split(separator: ":")
        guard let first = split.first, let last = split.last else { return nil }
        guard first.count == 6 else { return nil }
        var rgb = UInt64()
        Scanner(string: String(first)).scanHexInt64(&rgb)
        guard let opacity = Double(last) else { return nil }
        self.init(
            red: Double((rgb & 0xFF0000) >> 16) / 255.0,
            green: Double((rgb & 0x00FF00) >> 8) / 255.0,
            blue: Double(rgb & 0x0000FF) / 255.0,
            opacity: opacity
        )
    }
}
