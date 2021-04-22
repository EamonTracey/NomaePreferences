//
//  Application+Equatable.swift
//  NomaePreferences
//
//  Created by Eamon Tracey.
//  Copyright © 2021 Eamon Tracey. All rights reserved.
//

import Foundation

/// Conform `Application` to `Equatable` by comparing `bundleID`
extension Application: Equatable {
    public static func == (lhs: Application, rhs: Application) -> Bool {
        lhs.bundleID == rhs.bundleID
    }
}
