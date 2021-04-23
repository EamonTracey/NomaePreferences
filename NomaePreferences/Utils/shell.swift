//
//  shell.swift
//  NomaePreferences
//
//  Created by Eamon Tracey.
//  Copyright © 2021 Eamon Tracey. All rights reserved.
//

import Foundation

/// Perform a shell command with specified launch path and arguments.
public func shell(_ launchPath: String, args: [String] = []) {
    let task = NSTask()
    task.setLaunchPath(launchPath)
    task.setArguments(args)
    task.launch()
}
