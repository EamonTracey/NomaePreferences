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
    /// Create an `Application` instance with a raw `String` value (the bundle identifier).
    public init?(rawValue: String) {
        self = Application(rawValue)
    }
    /// Returns the `Application` raw `String` value (the bundle identifier).
    public var rawValue: String {
        bundleID
    }
}
