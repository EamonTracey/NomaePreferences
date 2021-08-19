//
//  DiscordLogo.swift
//  NomaePreferences
//
//  Created by Eamon Tracey.
//  Copyright © 2021 Eamon Tracey. All rights reserved.
//

import SwiftUI

/// The Discord logo as a SwiftUI `Shape`.
public struct DiscordLogo: Shape {
    
    public init() { }
    
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.84654 * width, y: 0.08905 * height))
        path.addCurve(to: CGPoint(x: 0.643 * width, y: 0.00755 * height), control1: CGPoint(x: 0.78281 * width, y: 0.0513 * height), control2: CGPoint(x: 0.71446 * width, y: 0.02348 * height))
        path.addCurve(to: CGPoint(x: 0.63972 * width, y: 0.00955 * height), control1: CGPoint(x: 0.64169 * width, y: 0.00725 * height), control2: CGPoint(x: 0.64039 * width, y: 0.00801 * height))
        path.addCurve(to: CGPoint(x: 0.61438 * width, y: 0.07676 * height), control1: CGPoint(x: 0.63093 * width, y: 0.02973 * height), control2: CGPoint(x: 0.6212 * width, y: 0.05606 * height))
        path.addCurve(to: CGPoint(x: 0.38576 * width, y: 0.07676 * height), control1: CGPoint(x: 0.53752 * width, y: 0.0619 * height), control2: CGPoint(x: 0.46105 * width, y: 0.0619 * height))
        path.addCurve(to: CGPoint(x: 0.36002 * width, y: 0.00955 * height), control1: CGPoint(x: 0.37894 * width, y: 0.0556 * height), control2: CGPoint(x: 0.36885 * width, y: 0.02973 * height))
        path.addCurve(to: CGPoint(x: 0.35675 * width, y: 0.00755 * height), control1: CGPoint(x: 0.35935 * width, y: 0.00807 * height), control2: CGPoint(x: 0.35805 * width, y: 0.0073 * height))
        path.addCurve(to: CGPoint(x: 0.15321 * width, y: 0.08905 * height), control1: CGPoint(x: 0.28533 * width, y: 0.02343 * height), control2: CGPoint(x: 0.21698 * width, y: 0.05125 * height))
        path.addCurve(to: CGPoint(x: 0.15187 * width, y: 0.09054 * height), control1: CGPoint(x: 0.15265 * width, y: 0.08936 * height), control2: CGPoint(x: 0.15218 * width, y: 0.08987 * height))
        path.addCurve(to: CGPoint(x: 0.00413 * width, y: 0.8253 * height), control1: CGPoint(x: 0.02222 * width, y: 0.34056 * height), control2: CGPoint(x: -0.01329 * width, y: 0.58444 * height))
        path.addCurve(to: CGPoint(x: 0.00543 * width, y: 0.82832 * height), control1: CGPoint(x: 0.00421 * width, y: 0.82648 * height), control2: CGPoint(x: 0.00472 * width, y: 0.8276 * height))
        path.addCurve(to: CGPoint(x: 0.25514 * width, y: 0.99126 * height), control1: CGPoint(x: 0.09097 * width, y: 0.90941 * height), control2: CGPoint(x: 0.17382 * width, y: 0.95863 * height))
        path.addCurve(to: CGPoint(x: 0.25865 * width, y: 0.98978 * height), control1: CGPoint(x: 0.25644 * width, y: 0.99178 * height), control2: CGPoint(x: 0.25782 * width, y: 0.99116 * height))
        path.addCurve(to: CGPoint(x: 0.30973 * width, y: 0.88251 * height), control1: CGPoint(x: 0.27788 * width, y: 0.95587 * height), control2: CGPoint(x: 0.29503 * width, y: 0.92011 * height))
        path.addCurve(to: CGPoint(x: 0.30799 * width, y: 0.87683 * height), control1: CGPoint(x: 0.3106 * width, y: 0.88031 * height), control2: CGPoint(x: 0.30977 * width, y: 0.8777 * height))
        path.addCurve(to: CGPoint(x: 0.22999 * width, y: 0.82883 * height), control1: CGPoint(x: 0.2808 * width, y: 0.86351 * height), control2: CGPoint(x: 0.2549 * width, y: 0.84727 * height))
        path.addCurve(to: CGPoint(x: 0.22967 * width, y: 0.82197 * height), control1: CGPoint(x: 0.22802 * width, y: 0.82735 * height), control2: CGPoint(x: 0.22786 * width, y: 0.82371 * height))
        path.addCurve(to: CGPoint(x: 0.24516 * width, y: 0.80629 * height), control1: CGPoint(x: 0.23492 * width, y: 0.8169 * height), control2: CGPoint(x: 0.24016 * width, y: 0.81162 * height))
        path.addCurve(to: CGPoint(x: 0.2484 * width, y: 0.80573 * height), control1: CGPoint(x: 0.24607 * width, y: 0.80532 * height), control2: CGPoint(x: 0.24733 * width, y: 0.80511 * height))
        path.addCurve(to: CGPoint(x: 0.75096 * width, y: 0.80573 * height), control1: CGPoint(x: 0.41205 * width, y: 0.90219 * height), control2: CGPoint(x: 0.58923 * width, y: 0.90219 * height))
        path.addCurve(to: CGPoint(x: 0.75423 * width, y: 0.80624 * height), control1: CGPoint(x: 0.75202 * width, y: 0.80506 * height), control2: CGPoint(x: 0.75328 * width, y: 0.80527 * height))
        path.addCurve(to: CGPoint(x: 0.76976 * width, y: 0.82197 * height), control1: CGPoint(x: 0.75924 * width, y: 0.81157 * height), control2: CGPoint(x: 0.76448 * width, y: 0.8169 * height))
        path.addCurve(to: CGPoint(x: 0.76948 * width, y: 0.82883 * height), control1: CGPoint(x: 0.77157 * width, y: 0.82371 * height), control2: CGPoint(x: 0.77145 * width, y: 0.82735 * height))
        path.addCurve(to: CGPoint(x: 0.69144 * width, y: 0.87678 * height), control1: CGPoint(x: 0.74457 * width, y: 0.84763 * height), control2: CGPoint(x: 0.71867 * width, y: 0.86351 * height))
        path.addCurve(to: CGPoint(x: 0.68974 * width, y: 0.88251 * height), control1: CGPoint(x: 0.68966 * width, y: 0.87765 * height), control2: CGPoint(x: 0.68888 * width, y: 0.88031 * height))
        path.addCurve(to: CGPoint(x: 0.74079 * width, y: 0.98973 * height), control1: CGPoint(x: 0.70476 * width, y: 0.92006 * height), control2: CGPoint(x: 0.72191 * width, y: 0.95582 * height))
        path.addCurve(to: CGPoint(x: 0.7443 * width, y: 0.99126 * height), control1: CGPoint(x: 0.74158 * width, y: 0.99116 * height), control2: CGPoint(x: 0.74299 * width, y: 0.99178 * height))
        path.addCurve(to: CGPoint(x: 0.99439 * width, y: 0.82832 * height), control1: CGPoint(x: 0.82601 * width, y: 0.95863 * height), control2: CGPoint(x: 0.90886 * width, y: 0.90941 * height))
        path.addCurve(to: CGPoint(x: 0.99569 * width, y: 0.82535 * height), control1: CGPoint(x: 0.99514 * width, y: 0.8276 * height), control2: CGPoint(x: 0.99562 * width, y: 0.82653 * height))
        path.addCurve(to: CGPoint(x: 0.84784 * width, y: 0.09059 * height), control1: CGPoint(x: 1.01655 * width, y: 0.54689 * height), control2: CGPoint(x: 0.96077 * width, y: 0.30501 * height))
        path.addCurve(to: CGPoint(x: 0.84654 * width, y: 0.08905 * height), control1: CGPoint(x: 0.84757 * width, y: 0.08987 * height), control2: CGPoint(x: 0.84709 * width, y: 0.08936 * height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.33417 * width, y: 0.67864 * height))
        path.addCurve(to: CGPoint(x: 0.2443 * width, y: 0.54853 * height), control1: CGPoint(x: 0.2849 * width, y: 0.67864 * height), control2: CGPoint(x: 0.2443 * width, y: 0.62025 * height))
        path.addCurve(to: CGPoint(x: 0.33417 * width, y: 0.41842 * height), control1: CGPoint(x: 0.2443 * width, y: 0.47682 * height), control2: CGPoint(x: 0.28411 * width, y: 0.41842 * height))
        path.addCurve(to: CGPoint(x: 0.42404 * width, y: 0.54853 * height), control1: CGPoint(x: 0.38462 * width, y: 0.41842 * height), control2: CGPoint(x: 0.42483 * width, y: 0.47733 * height))
        path.addCurve(to: CGPoint(x: 0.33417 * width, y: 0.67864 * height), control1: CGPoint(x: 0.42404 * width, y: 0.62025 * height), control2: CGPoint(x: 0.38423 * width, y: 0.67864 * height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.66645 * width, y: 0.67864 * height))
        path.addCurve(to: CGPoint(x: 0.57658 * width, y: 0.54853 * height), control1: CGPoint(x: 0.61718 * width, y: 0.67864 * height), control2: CGPoint(x: 0.57658 * width, y: 0.62025 * height))
        path.addCurve(to: CGPoint(x: 0.66645 * width, y: 0.41842 * height), control1: CGPoint(x: 0.57658 * width, y: 0.47682 * height), control2: CGPoint(x: 0.61639 * width, y: 0.41842 * height))
        path.addCurve(to: CGPoint(x: 0.75632 * width, y: 0.54853 * height), control1: CGPoint(x: 0.7169 * width, y: 0.41842 * height), control2: CGPoint(x: 0.75711 * width, y: 0.47733 * height))
        path.addCurve(to: CGPoint(x: 0.66645 * width, y: 0.67864 * height), control1: CGPoint(x: 0.75632 * width, y: 0.62025 * height), control2: CGPoint(x: 0.7169 * width, y: 0.67864 * height))
        path.closeSubpath()
        return path
    }
    
}
