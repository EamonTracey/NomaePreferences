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
    public let bundleID: String
    public let proxy: LSApplicationProxy
    public let name: String?
    public let icon: UIImage?
    
    public init(_ bundleID: String) {
        self.bundleID = bundleID
        self.proxy = LSApplicationProxy(forIdentifier: bundleID)
        self.name = proxy.localizedName(forContext: nil)
        self.icon = UIImage._applicationIconImage(forBundleIdentifier: bundleID, format: 1)
    }
    
    public static var allInstalledApplications: [Application] {
        LSApplicationWorkspace.default().allInstalledApplications().map { Application($0.applicationIdentifier()!) }
    }
}
