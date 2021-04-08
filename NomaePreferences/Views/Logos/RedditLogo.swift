//
//  RedditLogo.swift
//  NomaePreferences
//
//  Created by Eamon Tracey.
//  Copyright © 2021 Eamon Tracey. All rights reserved.
//

import SwiftUI

/// The Reddit logo as a SwiftUI `Shape`
public struct RedditLogo: Shape {
    
    public init() { }
    
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.addEllipse(in: CGRect(x: 0.24985 * width, y: 0.24985 * height, width: 0.50029 * width, height: 0.50029 * height))
        path.move(to: CGPoint(x: 0.66676 * width, y: 0.5 * height))
        path.addCurve(to: CGPoint(x: 0.63019 * width, y: 0.46343 * height), control1: CGPoint(x: 0.66676 * width, y: 0.47981 * height), control2: CGPoint(x: 0.65038 * width, y: 0.46343 * height))
        path.addCurve(to: CGPoint(x: 0.60503 * width, y: 0.47367 * height), control1: CGPoint(x: 0.62025 * width, y: 0.46343 * height), control2: CGPoint(x: 0.61147 * width, y: 0.46723 * height))
        path.addCurve(to: CGPoint(x: 0.50761 * width, y: 0.44266 * height), control1: CGPoint(x: 0.58016 * width, y: 0.45582 * height), control2: CGPoint(x: 0.54564 * width, y: 0.44412 * height))
        path.addLine(to: CGPoint(x: 0.52428 * width, y: 0.36454 * height))
        path.addLine(to: CGPoint(x: 0.57841 * width, y: 0.37595 * height))
        path.addCurve(to: CGPoint(x: 0.60445 * width, y: 0.40082 * height), control1: CGPoint(x: 0.57899 * width, y: 0.3897 * height), control2: CGPoint(x: 0.5904 * width, y: 0.40082 * height))
        path.addCurve(to: CGPoint(x: 0.63049 * width, y: 0.37478 * height), control1: CGPoint(x: 0.61878 * width, y: 0.40082 * height), control2: CGPoint(x: 0.63049 * width, y: 0.38912 * height))
        path.addCurve(to: CGPoint(x: 0.60445 * width, y: 0.34874 * height), control1: CGPoint(x: 0.63049 * width, y: 0.36044 * height), control2: CGPoint(x: 0.61878 * width, y: 0.34874 * height))
        path.addCurve(to: CGPoint(x: 0.58133 * width, y: 0.36337 * height), control1: CGPoint(x: 0.59421 * width, y: 0.34874 * height), control2: CGPoint(x: 0.58543 * width, y: 0.35459 * height))
        path.addLine(to: CGPoint(x: 0.52077 * width, y: 0.3505 * height))
        path.addCurve(to: CGPoint(x: 0.5158 * width, y: 0.35138 * height), control1: CGPoint(x: 0.51902 * width, y: 0.3502 * height), control2: CGPoint(x: 0.51726 * width, y: 0.3505 * height))
        path.addCurve(to: CGPoint(x: 0.51287 * width, y: 0.35547 * height), control1: CGPoint(x: 0.51434 * width, y: 0.35225 * height), control2: CGPoint(x: 0.51346 * width, y: 0.35372 * height))
        path.addLine(to: CGPoint(x: 0.49444 * width, y: 0.44266 * height))
        path.addCurve(to: CGPoint(x: 0.39555 * width, y: 0.47367 * height), control1: CGPoint(x: 0.45553 * width, y: 0.44383 * height), control2: CGPoint(x: 0.42071 * width, y: 0.45524 * height))
        path.addCurve(to: CGPoint(x: 0.37039 * width, y: 0.46343 * height), control1: CGPoint(x: 0.38912 * width, y: 0.46752 * height), control2: CGPoint(x: 0.38005 * width, y: 0.46343 * height))
        path.addCurve(to: CGPoint(x: 0.33382 * width, y: 0.5 * height), control1: CGPoint(x: 0.3502 * width, y: 0.46343 * height), control2: CGPoint(x: 0.33382 * width, y: 0.47981 * height))
        path.addCurve(to: CGPoint(x: 0.35547 * width, y: 0.53335 * height), control1: CGPoint(x: 0.33382 * width, y: 0.51492 * height), control2: CGPoint(x: 0.3426 * width, y: 0.5275 * height))
        path.addCurve(to: CGPoint(x: 0.35459 * width, y: 0.54447 * height), control1: CGPoint(x: 0.35489 * width, y: 0.53686 * height), control2: CGPoint(x: 0.35459 * width, y: 0.54067 * height))
        path.addCurve(to: CGPoint(x: 0.50059 * width, y: 0.64599 * height), control1: CGPoint(x: 0.35459 * width, y: 0.60064 * height), control2: CGPoint(x: 0.41984 * width, y: 0.64599 * height))
        path.addCurve(to: CGPoint(x: 0.64658 * width, y: 0.54447 * height), control1: CGPoint(x: 0.58133 * width, y: 0.64599 * height), control2: CGPoint(x: 0.64658 * width, y: 0.60064 * height))
        path.addCurve(to: CGPoint(x: 0.6457 * width, y: 0.53365 * height), control1: CGPoint(x: 0.64658 * width, y: 0.54067 * height), control2: CGPoint(x: 0.64628 * width, y: 0.53716 * height))
        path.addCurve(to: CGPoint(x: 0.66676 * width, y: 0.5 * height), control1: CGPoint(x: 0.65769 * width, y: 0.52779 * height), control2: CGPoint(x: 0.66676 * width, y: 0.51492 * height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.41662 * width, y: 0.52604 * height))
        path.addCurve(to: CGPoint(x: 0.44266 * width, y: 0.5 * height), control1: CGPoint(x: 0.41662 * width, y: 0.5117 * height), control2: CGPoint(x: 0.42832 * width, y: 0.5 * height))
        path.addCurve(to: CGPoint(x: 0.4687 * width, y: 0.52604 * height), control1: CGPoint(x: 0.45699 * width, y: 0.5 * height), control2: CGPoint(x: 0.4687 * width, y: 0.5117 * height))
        path.addCurve(to: CGPoint(x: 0.44266 * width, y: 0.55208 * height), control1: CGPoint(x: 0.4687 * width, y: 0.54037 * height), control2: CGPoint(x: 0.45699 * width, y: 0.55208 * height))
        path.addCurve(to: CGPoint(x: 0.41662 * width, y: 0.52604 * height), control1: CGPoint(x: 0.42832 * width, y: 0.55208 * height), control2: CGPoint(x: 0.41662 * width, y: 0.54037 * height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.56202 * width, y: 0.59479 * height))
        path.addCurve(to: CGPoint(x: 0.50029 * width, y: 0.61381 * height), control1: CGPoint(x: 0.54418 * width, y: 0.61264 * height), control2: CGPoint(x: 0.51024 * width, y: 0.61381 * height))
        path.addCurve(to: CGPoint(x: 0.43856 * width, y: 0.59479 * height), control1: CGPoint(x: 0.49035 * width, y: 0.61381 * height), control2: CGPoint(x: 0.45611 * width, y: 0.61235 * height))
        path.addCurve(to: CGPoint(x: 0.43856 * width, y: 0.58514 * height), control1: CGPoint(x: 0.43593 * width, y: 0.59216 * height), control2: CGPoint(x: 0.43593 * width, y: 0.58777 * height))
        path.addCurve(to: CGPoint(x: 0.44822 * width, y: 0.58514 * height), control1: CGPoint(x: 0.44119 * width, y: 0.5825 * height), control2: CGPoint(x: 0.44558 * width, y: 0.5825 * height))
        path.addCurve(to: CGPoint(x: 0.50059 * width, y: 0.60035 * height), control1: CGPoint(x: 0.45933 * width, y: 0.59626 * height), control2: CGPoint(x: 0.48332 * width, y: 0.60035 * height))
        path.addCurve(to: CGPoint(x: 0.55295 * width, y: 0.58514 * height), control1: CGPoint(x: 0.51785 * width, y: 0.60035 * height), control2: CGPoint(x: 0.54154 * width, y: 0.59626 * height))
        path.addCurve(to: CGPoint(x: 0.56261 * width, y: 0.58514 * height), control1: CGPoint(x: 0.55559 * width, y: 0.5825 * height), control2: CGPoint(x: 0.55998 * width, y: 0.5825 * height))
        path.addCurve(to: CGPoint(x: 0.56202 * width, y: 0.59479 * height), control1: CGPoint(x: 0.56466 * width, y: 0.58806 * height), control2: CGPoint(x: 0.56466 * width, y: 0.59216 * height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.55734 * width, y: 0.55208 * height))
        path.addCurve(to: CGPoint(x: 0.5313 * width, y: 0.52604 * height), control1: CGPoint(x: 0.54301 * width, y: 0.55208 * height), control2: CGPoint(x: 0.5313 * width, y: 0.54037 * height))
        path.addCurve(to: CGPoint(x: 0.55734 * width, y: 0.5 * height), control1: CGPoint(x: 0.5313 * width, y: 0.5117 * height), control2: CGPoint(x: 0.54301 * width, y: 0.5 * height))
        path.addCurve(to: CGPoint(x: 0.58338 * width, y: 0.52604 * height), control1: CGPoint(x: 0.57168 * width, y: 0.5 * height), control2: CGPoint(x: 0.58338 * width, y: 0.5117 * height))
        path.addCurve(to: CGPoint(x: 0.55734 * width, y: 0.55208 * height), control1: CGPoint(x: 0.58338 * width, y: 0.54037 * height), control2: CGPoint(x: 0.57168 * width, y: 0.55208 * height))
        path.closeSubpath()
        return path
    }
    
}
