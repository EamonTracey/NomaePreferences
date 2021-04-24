//
//  NomaePreferencesController.swift
//  NomaePreferences
//
//  Created by Eamon Tracey.
//  Copyright © 2021 Eamon Tracey. All rights reserved.
//

import SwiftUI

/// A `PreferenceLoaderController` subclass that loads a SwiftUI `View`.
///
/// Example usage:
///
///     class PreferencesController: NomaePreferencesController {
///         override var suiView {
///             get { AnyView(RootPreferences()) }
///             set { super.suiView = newValue }
///         }
///     }
open class NomaePreferencesController: PreferenceLoaderController {
    
    /// SwiftUI `View` to be overridden with a custom view.
    open var suiView: AnyView = AnyView(EmptyView())
    
    override public func loadView() {
        let host = UIHostingController(rootView: suiView)
        let tmp = host.view
        host.view = nil
        view = tmp
    }
    
}
