//
//  ColorField.swift
//  NomaePreferences
//
//  Created by Eamon Tracey.
//

import SwiftUI

/// A TextField that displays the color of the corresponding
/// hex color code if a valid hex color code is input.
public struct ColorField: View {
    let title: String
    @Binding var selection: String
    
    public init(_ title: String, selection: Binding<String>) {
        self.title = title
        self._selection = selection
    }
    
    public var body: some View {
        HStack {
            TextField(title, text: $selection)
            RoundedRectangle(cornerRadius: 5)
                .foregroundColor(Color(hexString: selection) ?? .clear)
        }
    }
}
