//
//  shell.swift
//  NomaePreferences
//
//  Created by Eamon Tracey.
//  Copyright © 2021 Eamon Tracey. All rights reserved.
//

import Foundation

/// Perform a shell command.
///
/// - Parameters:
///     - launchPath: The launch path of the command to execute.
///     - args: An array of arguments passed to the command.
public func shell(_ launchPath: String, args: [String] = []) {
    let task = NSTask()
    task.setLaunchPath(launchPath)
    task.setArguments(args)
    task.launch()
}
