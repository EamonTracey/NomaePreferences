//
//  Color+RawRepresentable.swift
//  NomaePreferences
//
//  Created by Eamon Tracey.
//  Copyright © 2021 Eamon Tracey. All rights reserved.
//

import SwiftUI

/// Conform `Color` to `RawRepresentable` for use with `Preference` and `ColorPicker`.
extension Color: RawRepresentable {
    public init?(rawValue: String) {
        guard #available(iOS 14, *) else { fatalError("do not use Color RawRepresentable conformity below iOS 14") }
        let data = Data(base64Encoded: rawValue) ?? Data()
        guard let uiColor = try? NSKeyedUnarchiver.unarchivedObject(ofClass: UIColor.self, from: data) else { return nil }
        self = Color(uiColor)
    }
    
    public var rawValue: String {
        guard #available(iOS 14, *) else { fatalError("do not use Color RawRepresentable conformity below iOS 14") }
        let uiColor = UIColor(self)
        let data = (try? NSKeyedArchiver.archivedData(withRootObject: uiColor, requiringSecureCoding: false)) ?? Data()
        return data.base64EncodedString()
    }
}
