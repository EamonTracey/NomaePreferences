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
    /// TODO
    public let bundleID: String
    /// TODO
    public let proxy: LSApplicationProxy
    /// TODO
    public let name: String?
    /// TODO
    public let icon: UIImage?
    
    /// TODO
    public init(_ bundleID: String) {
        self.bundleID = bundleID
        self.proxy = LSApplicationProxy(forIdentifier: bundleID)
        self.name = proxy.localizedName(forContext: nil)
        self.icon = UIImage._applicationIconImage(forBundleIdentifier: bundleID, format: 1)
    }
    
    /// TODO
    public static var allInstalledApplications: [Application] {
        LSApplicationWorkspace.default().allInstalledApplications().map { Application($0.applicationIdentifier()!) }
    }
}
