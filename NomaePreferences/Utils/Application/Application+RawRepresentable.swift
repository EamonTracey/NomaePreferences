//
//  Application+RawRepresentable.swift
//  NomaePreferences
//
//  Created by Eamon Tracey.
//  Copyright © 2021 Eamon Tracey. All rights reserved.
//

import Foundation

/// Conform `Application` to `RawRepresentable` using `bundleID` as `rawValue`.
extension Application: RawRepresentable {
    public init?(rawValue: String) {
        self = Application(rawValue)
    }
    
    public var rawValue: String {
        bundleID
    }
}
