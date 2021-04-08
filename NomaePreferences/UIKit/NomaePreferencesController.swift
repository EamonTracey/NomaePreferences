//
//  NomaePreferencesController.swift
//  NomaePreferences
//
//  Created by Eamon Tracey.
//  Copyright © 2021 Eamon Tracey. All rights reserved.
//

import SwiftUI

/// A view controller that loads a SwiftUI `View`. Subclass this and override `suiView`
open class NomaePreferencesController: PreferenceLoaderController {
    
    /// SwiftUI `View` to override with your custom preferences view
    open var suiView: AnyView = AnyView(EmptyView())
    
    override public func loadView() {
        let host = UIHostingController(rootView: suiView)
        let tmp = host.view
        host.view = nil
        view = tmp
    }
    
}
