//
//  Header.swift
//  NomaePreferences
//
//  Created by Eamon Tracey.
//  Copyright © 2021 Eamon Tracey. All rights reserved.
//

import SwiftUI

/// Header view to display a package name, an optional package icon, and an optional subtitle.
public struct Header<Icon: View>: View {
    private let packageName: String
    private let icon: Icon?
    private let subtitle: String?
    
    public init(_ packageName: String, icon: Icon? = nil, subtitle: String? = nil) {
        self.packageName = packageName
        self.icon = icon
        self.subtitle = subtitle
    }
    
    public var body: some View {
        HStack {
            icon
                .padding(.trailing)
            VStack(alignment: .leading) {
                Text(packageName)
                    .font(.largeTitle)
                subtitle.map { subtitle in
                    Text(subtitle)
                        .font(.callout)
                        .foregroundColor(.gray)
                }
            }
        }
        .padding()
    }
}
