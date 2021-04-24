//
//  Application.swift
//  NomaePreferences
//
//  Created by Eamon Tracey.
//  Copyright © 2021 Eamon Tracey. All rights reserved.
//

import MobileCoreServices
import Foundation

/// A representation of an iOS application wrapped around `LSApplicationProxy`.
public struct Application {
    /// The bundle identifier of the application.
    public let bundleID: String
    /// An `LSApplicationProxy` instantiated from the bundle identifier.
    public let proxy: LSApplicationProxy
    /// The display name of the application.
    public let name: String?
    /// The icon of the application with 40x40 resolution.
    public let icon: UIImage?
    
    /// Creates an `Application` instance.
    ///
    /// - Parameters:
    ///     - bundleID : The bundle identifier of the application.
    public init(_ bundleID: String) {
        self.bundleID = bundleID
        self.proxy = LSApplicationProxy(forIdentifier: bundleID)
        self.name = proxy.localizedName(forContext: nil)
        self.icon = UIImage._applicationIconImage(forBundleIdentifier: bundleID, format: 1)
    }
    
    /// Returns an array of all installed applications, including system applications.
    public static var allInstalledApplications: [Application] {
        LSApplicationWorkspace.default().allInstalledApplications().map { Application($0.applicationIdentifier()!) }
    }
}
