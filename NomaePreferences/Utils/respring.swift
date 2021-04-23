//
//  respring.swift
//  NomaePreferences
//
//  Created by Eamon Tracey.
//  Copyright © 2021 Eamon Tracey. All rights reserved.
//

import Foundation

/// Respring the device by sending SIGKILL to SpringBoard.
public func respring() {
    shell("/usr/bin/killall", args: ["-9", "SpringBoard"])
}
