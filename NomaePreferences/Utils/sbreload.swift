//
//  sbreload.swift
//  NomaePreferences
//
//  Created by Eamon Tracey.
//  Copyright © 2021 Eamon Tracey. All rights reserved.
//

import Foundation

/// Respring the device by running sbreload.
public func sbreload() {
    shell("/usr/bin/sbreload")
}
