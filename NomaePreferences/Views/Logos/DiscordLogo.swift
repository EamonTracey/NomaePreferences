//
//  DiscordLogo.swift
//  NomaePreferences
//
//  Created by Eamon Tracey.
//  Copyright © 2021 Eamon Tracey. All rights reserved.
//

import SwiftUI

/// The Discord logo as a SwiftUI `Shape`
public struct DiscordLogo: Shape {
    
    public init() { }
    
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.42612 * width, y: 0.43292 * height))
        path.addCurve(to: CGPoint(x: 0.38449 * width, y: 0.47917 * height), control1: CGPoint(x: 0.40286 * width, y: 0.43292 * height), control2: CGPoint(x: 0.38449 * width, y: 0.45375 * height))
        path.addCurve(to: CGPoint(x: 0.42612 * width, y: 0.52542 * height), control1: CGPoint(x: 0.38449 * width, y: 0.50458 * height), control2: CGPoint(x: 0.40327 * width, y: 0.52542 * height))
        path.addCurve(to: CGPoint(x: 0.46776 * width, y: 0.47917 * height), control1: CGPoint(x: 0.44939 * width, y: 0.52542 * height), control2: CGPoint(x: 0.46776 * width, y: 0.50458 * height))
        path.addCurve(to: CGPoint(x: 0.42612 * width, y: 0.43292 * height), control1: CGPoint(x: 0.46816 * width, y: 0.45375 * height), control2: CGPoint(x: 0.44939 * width, y: 0.43292 * height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.5751 * width, y: 0.43292 * height))
        path.addCurve(to: CGPoint(x: 0.53347 * width, y: 0.47917 * height), control1: CGPoint(x: 0.55184 * width, y: 0.43292 * height), control2: CGPoint(x: 0.53347 * width, y: 0.45375 * height))
        path.addCurve(to: CGPoint(x: 0.5751 * width, y: 0.52542 * height), control1: CGPoint(x: 0.53347 * width, y: 0.50458 * height), control2: CGPoint(x: 0.55224 * width, y: 0.52542 * height))
        path.addCurve(to: CGPoint(x: 0.61673 * width, y: 0.47917 * height), control1: CGPoint(x: 0.59837 * width, y: 0.52542 * height), control2: CGPoint(x: 0.61673 * width, y: 0.50458 * height))
        path.addCurve(to: CGPoint(x: 0.5751 * width, y: 0.43292 * height), control1: CGPoint(x: 0.61673 * width, y: 0.45375 * height), control2: CGPoint(x: 0.59837 * width, y: 0.43292 * height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.77347 * width, y: 0.08333 * height))
        path.addLine(to: CGPoint(x: 0.22653 * width, y: 0.08333 * height))
        path.addCurve(to: CGPoint(x: 0.14286 * width, y: 0.16917 * height), control1: CGPoint(x: 0.18041 * width, y: 0.08333 * height), control2: CGPoint(x: 0.14286 * width, y: 0.12167 * height))
        path.addLine(to: CGPoint(x: 0.14286 * width, y: 0.7325 * height))
        path.addCurve(to: CGPoint(x: 0.22653 * width, y: 0.81833 * height), control1: CGPoint(x: 0.14286 * width, y: 0.78 * height), control2: CGPoint(x: 0.18041 * width, y: 0.81833 * height))
        path.addLine(to: CGPoint(x: 0.68939 * width, y: 0.81833 * height))
        path.addLine(to: CGPoint(x: 0.66776 * width, y: 0.74125 * height))
        path.addLine(to: CGPoint(x: 0.72 * width, y: 0.79083 * height))
        path.addLine(to: CGPoint(x: 0.76939 * width, y: 0.8375 * height))
        path.addLine(to: CGPoint(x: 0.85714 * width, y: 0.91667 * height))
        path.addLine(to: CGPoint(x: 0.85714 * width, y: 0.16917 * height))
        path.addCurve(to: CGPoint(x: 0.77347 * width, y: 0.08333 * height), control1: CGPoint(x: 0.85714 * width, y: 0.12167 * height), control2: CGPoint(x: 0.81959 * width, y: 0.08333 * height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.61592 * width, y: 0.6275 * height))
        path.addCurve(to: CGPoint(x: 0.58898 * width, y: 0.59375 * height), control1: CGPoint(x: 0.58898 * width, y: 0.59375 * height), control2: CGPoint(x: 0.60122 * width, y: 0.60958 * height))
        path.addCurve(to: CGPoint(x: 0.66286 * width, y: 0.54417 * height), control1: CGPoint(x: 0.64245 * width, y: 0.57833 * height), control2: CGPoint(x: 0.66286 * width, y: 0.54417 * height))
        path.addCurve(to: CGPoint(x: 0.61592 * width, y: 0.56875 * height), control1: CGPoint(x: 0.64612 * width, y: 0.55542 * height), control2: CGPoint(x: 0.6302 * width, y: 0.56333 * height))
        path.addCurve(to: CGPoint(x: 0.55673 * width, y: 0.58667 * height), control1: CGPoint(x: 0.59551 * width, y: 0.5775 * height), control2: CGPoint(x: 0.57592 * width, y: 0.58333 * height))
        path.addCurve(to: CGPoint(x: 0.45102 * width, y: 0.58625 * height), control1: CGPoint(x: 0.51755 * width, y: 0.59417 * height), control2: CGPoint(x: 0.48163 * width, y: 0.59208 * height))
        path.addCurve(to: CGPoint(x: 0.39102 * width, y: 0.56833 * height), control1: CGPoint(x: 0.42776 * width, y: 0.58167 * height), control2: CGPoint(x: 0.40776 * width, y: 0.575 * height))
        path.addCurve(to: CGPoint(x: 0.36122 * width, y: 0.55417 * height), control1: CGPoint(x: 0.38163 * width, y: 0.56458 * height), control2: CGPoint(x: 0.37143 * width, y: 0.56 * height))
        path.addCurve(to: CGPoint(x: 0.35755 * width, y: 0.55208 * height), control1: CGPoint(x: 0.36 * width, y: 0.55333 * height), control2: CGPoint(x: 0.35878 * width, y: 0.55292 * height))
        path.addCurve(to: CGPoint(x: 0.35592 * width, y: 0.55083 * height), control1: CGPoint(x: 0.35673 * width, y: 0.55167 * height), control2: CGPoint(x: 0.35633 * width, y: 0.55125 * height))
        path.addCurve(to: CGPoint(x: 0.34449 * width, y: 0.54375 * height), control1: CGPoint(x: 0.34857 * width, y: 0.54667 * height), control2: CGPoint(x: 0.34449 * width, y: 0.54375 * height))
        path.addCurve(to: CGPoint(x: 0.41592 * width, y: 0.59292 * height), control1: CGPoint(x: 0.34449 * width, y: 0.54375 * height), control2: CGPoint(x: 0.36408 * width, y: 0.57708 * height))
        path.addCurve(to: CGPoint(x: 0.38857 * width, y: 0.6275 * height), control1: CGPoint(x: 0.40367 * width, y: 0.60875 * height), control2: CGPoint(x: 0.38857 * width, y: 0.6275 * height))
        path.addCurve(to: CGPoint(x: 0.26408 * width, y: 0.56417 * height), control1: CGPoint(x: 0.29837 * width, y: 0.62458 * height), control2: CGPoint(x: 0.26408 * width, y: 0.56417 * height))
        path.addCurve(to: CGPoint(x: 0.32286 * width, y: 0.32125 * height), control1: CGPoint(x: 0.26408 * width, y: 0.43 * height), control2: CGPoint(x: 0.32286 * width, y: 0.32125 * height))
        path.addCurve(to: CGPoint(x: 0.43755 * width, y: 0.2775 * height), control1: CGPoint(x: 0.38163 * width, y: 0.27625 * height), control2: CGPoint(x: 0.43755 * width, y: 0.2775 * height))
        path.addLine(to: CGPoint(x: 0.44163 * width, y: 0.2825 * height))
        path.addCurve(to: CGPoint(x: 0.33429 * width, y: 0.33708 * height), control1: CGPoint(x: 0.36816 * width, y: 0.30417 * height), control2: CGPoint(x: 0.33429 * width, y: 0.33708 * height))
        path.addCurve(to: CGPoint(x: 0.35837 * width, y: 0.325 * height), control1: CGPoint(x: 0.33429 * width, y: 0.33708 * height), control2: CGPoint(x: 0.34327 * width, y: 0.33208 * height))
        path.addCurve(to: CGPoint(x: 0.45102 * width, y: 0.29875 * height), control1: CGPoint(x: 0.40204 * width, y: 0.30542 * height), control2: CGPoint(x: 0.43673 * width, y: 0.3 * height))
        path.addCurve(to: CGPoint(x: 0.45796 * width, y: 0.29792 * height), control1: CGPoint(x: 0.45347 * width, y: 0.29833 * height), control2: CGPoint(x: 0.45551 * width, y: 0.29792 * height))
        path.addCurve(to: CGPoint(x: 0.54041 * width, y: 0.29708 * height), control1: CGPoint(x: 0.48286 * width, y: 0.29458 * height), control2: CGPoint(x: 0.51102 * width, y: 0.29375 * height))
        path.addCurve(to: CGPoint(x: 0.66327 * width, y: 0.33708 * height), control1: CGPoint(x: 0.57918 * width, y: 0.30167 * height), control2: CGPoint(x: 0.62082 * width, y: 0.31333 * height))
        path.addCurve(to: CGPoint(x: 0.56163 * width, y: 0.28417 * height), control1: CGPoint(x: 0.66327 * width, y: 0.33708 * height), control2: CGPoint(x: 0.63102 * width, y: 0.30583 * height))
        path.addLine(to: CGPoint(x: 0.56735 * width, y: 0.2775 * height))
        path.addCurve(to: CGPoint(x: 0.68204 * width, y: 0.32125 * height), control1: CGPoint(x: 0.68204 * width, y: 0.32125 * height), control2: CGPoint(x: 0.62327 * width, y: 0.27625 * height))
        path.addCurve(to: CGPoint(x: 0.74082 * width, y: 0.56417 * height), control1: CGPoint(x: 0.68204 * width, y: 0.32125 * height), control2: CGPoint(x: 0.74082 * width, y: 0.43 * height))
        path.addCurve(to: CGPoint(x: 0.61592 * width, y: 0.6275 * height), control1: CGPoint(x: 0.74082 * width, y: 0.56417 * height), control2: CGPoint(x: 0.70612 * width, y: 0.62458 * height))
        path.closeSubpath()
        return path
    }
    
}
