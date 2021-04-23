//
//  TwitterLogo.swift
//  NomaePreferences
//
//  Created by Eamon Tracey.
//  Copyright © 2021 Eamon Tracey. All rights reserved.
//

import SwiftUI

/// The Twitter logo as a SwiftUI `Shape`.
public struct TwitterLogo: Shape {
    
    public init() { }
    
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.89496 * width, y: 0.25142 * height))
        path.addCurve(to: CGPoint(x: 0.89556 * width, y: 0.28343 * height), control1: CGPoint(x: 0.89556 * width, y: 0.26206 * height), control2: CGPoint(x: 0.89556 * width, y: 0.2727 * height))
        path.addCurve(to: CGPoint(x: 0.31617 * width, y: 0.98779 * height), control1: CGPoint(x: 0.89556 * width, y: 0.61054 * height), control2: CGPoint(x: 0.69073 * width, y: 0.98779 * height))
        path.addCurve(to: CGPoint(x: 0.00403 * width, y: 0.87662 * height), control1: CGPoint(x: 0.20552 * width, y: 0.98779 * height), control2: CGPoint(x: 0.09718 * width, y: 0.94926 * height))
        path.addCurve(to: CGPoint(x: 0.0525 * width, y: 0.8802 * height), control1: CGPoint(x: 0.02012 * width, y: 0.87897 * height), control2: CGPoint(x: 0.03629 * width, y: 0.88015 * height))
        path.addCurve(to: CGPoint(x: 0.3054 * width, y: 0.77402 * height), control1: CGPoint(x: 0.14419 * width, y: 0.88029 * height), control2: CGPoint(x: 0.23327 * width, y: 0.84289 * height))
        path.addCurve(to: CGPoint(x: 0.11516 * width, y: 0.60211 * height), control1: CGPoint(x: 0.21827 * width, y: 0.77201 * height), control2: CGPoint(x: 0.14185 * width, y: 0.70294 * height))
        path.addCurve(to: CGPoint(x: 0.2071 * width, y: 0.59784 * height), control1: CGPoint(x: 0.14569 * width, y: 0.60926 * height), control2: CGPoint(x: 0.17714 * width, y: 0.60779 * height))
        path.addCurve(to: CGPoint(x: 0.04375 * width, y: 0.3552 * height), control1: CGPoint(x: 0.1121 * width, y: 0.57451 * height), control2: CGPoint(x: 0.04375 * width, y: 0.47304 * height))
        path.addCurve(to: CGPoint(x: 0.04375 * width, y: 0.35206 * height), control1: CGPoint(x: 0.04375 * width, y: 0.35412 * height), control2: CGPoint(x: 0.04375 * width, y: 0.35309 * height))
        path.addCurve(to: CGPoint(x: 0.13617 * width, y: 0.38304 * height), control1: CGPoint(x: 0.07206 * width, y: 0.37123 * height), control2: CGPoint(x: 0.10375 * width, y: 0.38186 * height))
        path.addCurve(to: CGPoint(x: 0.07315 * width, y: 0.0525 * height), control1: CGPoint(x: 0.04669 * width, y: 0.31034 * height), control2: CGPoint(x: 0.01911 * width, y: 0.16564 * height))
        path.addCurve(to: CGPoint(x: 0.49282 * width, y: 0.31113 * height), control1: CGPoint(x: 0.17653 * width, y: 0.20716 * height), control2: CGPoint(x: 0.32907 * width, y: 0.30118 * height))
        path.addCurve(to: CGPoint(x: 0.55173 * width, y: 0.07461 * height), control1: CGPoint(x: 0.47641 * width, y: 0.22515 * height), control2: CGPoint(x: 0.49883 * width, y: 0.13505 * height))
        path.addCurve(to: CGPoint(x: 0.83984 * width, y: 0.08534 * height), control1: CGPoint(x: 0.63375 * width, y: -0.01912 * height), control2: CGPoint(x: 0.76274 * width, y: -0.01431 * height))
        path.addCurve(to: CGPoint(x: 0.96915 * width, y: 0.02525 * height), control1: CGPoint(x: 0.88544 * width, y: 0.07441 * height), control2: CGPoint(x: 0.92915 * width, y: 0.05407 * height))
        path.addCurve(to: CGPoint(x: 0.87964 * width, y: 0.16216 * height), control1: CGPoint(x: 0.95395 * width, y: 0.08255 * height), control2: CGPoint(x: 0.92214 * width, y: 0.13123 * height))
        path.addCurve(to: CGPoint(x: 0.99657 * width, y: 0.12319 * height), control1: CGPoint(x: 0.92 * width, y: 0.15637 * height), control2: CGPoint(x: 0.95944 * width, y: 0.14324 * height))
        path.addCurve(to: CGPoint(x: 0.89496 * width, y: 0.25142 * height), control1: CGPoint(x: 0.96923 * width, y: 0.17299 * height), control2: CGPoint(x: 0.9348 * width, y: 0.21637 * height))
        path.closeSubpath()
        return path
    }
    
}
