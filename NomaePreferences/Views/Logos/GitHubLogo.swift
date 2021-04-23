//
//  GitHubLogo.swift
//  NomaePreferences
//
//  Created by Eamon Tracey.
//  Copyright © 2021 Eamon Tracey. All rights reserved.
//

import SwiftUI

/// The GitHub logo as a SwiftUI `Shape`.
public struct GitHubLogo: Shape {
    
    public init() { }
    
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.93292 * width, y: 0.26125 * height))
        path.addCurve(to: CGPoint(x: 0.75096 * width, y: 0.07929 * height), control1: CGPoint(x: 0.88821 * width, y: 0.18465 * height), control2: CGPoint(x: 0.82756 * width, y: 0.124 * height))
        path.addCurve(to: CGPoint(x: 0.49999 * width, y: 0.01223 * height), control1: CGPoint(x: 0.67435 * width, y: 0.03458 * height), control2: CGPoint(x: 0.59071 * width, y: 0.01223 * height))
        path.addCurve(to: CGPoint(x: 0.24902 * width, y: 0.07929 * height), control1: CGPoint(x: 0.40928 * width, y: 0.01223 * height), control2: CGPoint(x: 0.32562 * width, y: 0.03459 * height))
        path.addCurve(to: CGPoint(x: 0.06706 * width, y: 0.26125 * height), control1: CGPoint(x: 0.17241 * width, y: 0.124 * height), control2: CGPoint(x: 0.11177 * width, y: 0.18465 * height))
        path.addCurve(to: CGPoint(x: 0, y: 0.51221 * height), control1: CGPoint(x: 0.02235 * width, y: 0.33786 * height), control2: CGPoint(x: 0, y: 0.42151 * height))
        path.addCurve(to: CGPoint(x: 0.09538 * width, y: 0.80615 * height), control1: CGPoint(x: 0, y: 0.62116 * height), control2: CGPoint(x: 0.03179 * width, y: 0.71913 * height))
        path.addCurve(to: CGPoint(x: 0.34179 * width, y: 0.98681 * height), control1: CGPoint(x: 0.15896 * width, y: 0.89317 * height), control2: CGPoint(x: 0.2411 * width, y: 0.95339 * height))
        path.addCurve(to: CGPoint(x: 0.36782 * width, y: 0.98226 * height), control1: CGPoint(x: 0.35351 * width, y: 0.98898 * height), control2: CGPoint(x: 0.36218 * width, y: 0.98745 * height))
        path.addCurve(to: CGPoint(x: 0.37629 * width, y: 0.96273 * height), control1: CGPoint(x: 0.37347 * width, y: 0.97705 * height), control2: CGPoint(x: 0.37629 * width, y: 0.97053 * height))
        path.addCurve(to: CGPoint(x: 0.37596 * width, y: 0.92758 * height), control1: CGPoint(x: 0.37629 * width, y: 0.96143 * height), control2: CGPoint(x: 0.37617 * width, y: 0.94972 * height))
        path.addCurve(to: CGPoint(x: 0.37563 * width, y: 0.86965 * height), control1: CGPoint(x: 0.37573 * width, y: 0.90544 * height), control2: CGPoint(x: 0.37563 * width, y: 0.88612 * height))
        path.addLine(to: CGPoint(x: 0.36066 * width, y: 0.87224 * height))
        path.addCurve(to: CGPoint(x: 0.32452 * width, y: 0.87452 * height), control1: CGPoint(x: 0.35111 * width, y: 0.87398 * height), control2: CGPoint(x: 0.33906 * width, y: 0.87473 * height))
        path.addCurve(to: CGPoint(x: 0.27928 * width, y: 0.86996 * height), control1: CGPoint(x: 0.30999 * width, y: 0.87431 * height), control2: CGPoint(x: 0.2949 * width, y: 0.87279 * height))
        path.addCurve(to: CGPoint(x: 0.23566 * width, y: 0.85044 * height), control1: CGPoint(x: 0.26365 * width, y: 0.86715 * height), control2: CGPoint(x: 0.24911 * width, y: 0.86064 * height))
        path.addCurve(to: CGPoint(x: 0.20702 * width, y: 0.81041 * height), control1: CGPoint(x: 0.22221 * width, y: 0.84024 * height), control2: CGPoint(x: 0.21266 * width, y: 0.82689 * height))
        path.addLine(to: CGPoint(x: 0.20051 * width, y: 0.79543 * height))
        path.addCurve(to: CGPoint(x: 0.18 * width, y: 0.76223 * height), control1: CGPoint(x: 0.19617 * width, y: 0.78545 * height), control2: CGPoint(x: 0.18934 * width, y: 0.77437 * height))
        path.addCurve(to: CGPoint(x: 0.15168 * width, y: 0.73749 * height), control1: CGPoint(x: 0.17067 * width, y: 0.75007 * height), control2: CGPoint(x: 0.16123 * width, y: 0.74183 * height))
        path.addLine(to: CGPoint(x: 0.14713 * width, y: 0.73423 * height))
        path.addCurve(to: CGPoint(x: 0.13866 * width, y: 0.72641 * height), control1: CGPoint(x: 0.14409 * width, y: 0.73206 * height), control2: CGPoint(x: 0.14127 * width, y: 0.72945 * height))
        path.addCurve(to: CGPoint(x: 0.13281 * width, y: 0.7173 * height), control1: CGPoint(x: 0.13606 * width, y: 0.72338 * height), control2: CGPoint(x: 0.13411 * width, y: 0.72034 * height))
        path.addCurve(to: CGPoint(x: 0.13606 * width, y: 0.7098 * height), control1: CGPoint(x: 0.1315 * width, y: 0.71425 * height), control2: CGPoint(x: 0.13258 * width, y: 0.71176 * height))
        path.addCurve(to: CGPoint(x: 0.15494 * width, y: 0.70689 * height), control1: CGPoint(x: 0.13954 * width, y: 0.70784 * height), control2: CGPoint(x: 0.14582 * width, y: 0.70689 * height))
        path.addLine(to: CGPoint(x: 0.16796 * width, y: 0.70883 * height))
        path.addCurve(to: CGPoint(x: 0.20019 * width, y: 0.72445 * height), control1: CGPoint(x: 0.17664 * width, y: 0.71057 * height), control2: CGPoint(x: 0.18738 * width, y: 0.71577 * height))
        path.addCurve(to: CGPoint(x: 0.23176 * width, y: 0.7583 * height), control1: CGPoint(x: 0.21299 * width, y: 0.73313 * height), control2: CGPoint(x: 0.22351 * width, y: 0.74442 * height))
        path.addCurve(to: CGPoint(x: 0.26789 * width, y: 0.79899 * height), control1: CGPoint(x: 0.24174 * width, y: 0.7761 * height), control2: CGPoint(x: 0.25378 * width, y: 0.78966 * height))
        path.addCurve(to: CGPoint(x: 0.31053 * width, y: 0.81299 * height), control1: CGPoint(x: 0.28199 * width, y: 0.80833 * height), control2: CGPoint(x: 0.29621 * width, y: 0.81299 * height))
        path.addCurve(to: CGPoint(x: 0.34764 * width, y: 0.80974 * height), control1: CGPoint(x: 0.32485 * width, y: 0.81299 * height), control2: CGPoint(x: 0.33722 * width, y: 0.8119 * height))
        path.addCurve(to: CGPoint(x: 0.37693 * width, y: 0.79997 * height), control1: CGPoint(x: 0.35805 * width, y: 0.80757 * height), control2: CGPoint(x: 0.36781 * width, y: 0.80431 * height))
        path.addCurve(to: CGPoint(x: 0.40883 * width, y: 0.73291 * height), control1: CGPoint(x: 0.38084 * width, y: 0.77088 * height), control2: CGPoint(x: 0.39147 * width, y: 0.74853 * height))
        path.addCurve(to: CGPoint(x: 0.3421 * width, y: 0.72119 * height), control1: CGPoint(x: 0.38409 * width, y: 0.73031 * height), control2: CGPoint(x: 0.36185 * width, y: 0.72639 * height))
        path.addCurve(to: CGPoint(x: 0.28091 * width, y: 0.69579 * height), control1: CGPoint(x: 0.32236 * width, y: 0.71597 * height), control2: CGPoint(x: 0.30195 * width, y: 0.70752 * height))
        path.addCurve(to: CGPoint(x: 0.2285 * width, y: 0.65217 * height), control1: CGPoint(x: 0.25985 * width, y: 0.68407 * height), control2: CGPoint(x: 0.24238 * width, y: 0.66953 * height))
        path.addCurve(to: CGPoint(x: 0.19432 * width, y: 0.58381 * height), control1: CGPoint(x: 0.21461 * width, y: 0.63481 * height), control2: CGPoint(x: 0.20321 * width, y: 0.61202 * height))
        path.addCurve(to: CGPoint(x: 0.18098 * width, y: 0.48616 * height), control1: CGPoint(x: 0.18543 * width, y: 0.5556 * height), control2: CGPoint(x: 0.18098 * width, y: 0.52305 * height))
        path.addCurve(to: CGPoint(x: 0.23241 * width, y: 0.35204 * height), control1: CGPoint(x: 0.18098 * width, y: 0.43363 * height), control2: CGPoint(x: 0.19813 * width, y: 0.38894 * height))
        path.addCurve(to: CGPoint(x: 0.23697 * width, y: 0.21924 * height), control1: CGPoint(x: 0.21635 * width, y: 0.31255 * height), control2: CGPoint(x: 0.21787 * width, y: 0.26828 * height))
        path.addCurve(to: CGPoint(x: 0.29296 * width, y: 0.22803 * height), control1: CGPoint(x: 0.24955 * width, y: 0.21533 * height), control2: CGPoint(x: 0.26822 * width, y: 0.21827 * height))
        path.addCurve(to: CGPoint(x: 0.34732 * width, y: 0.2531 * height), control1: CGPoint(x: 0.3177 * width, y: 0.23779 * height), control2: CGPoint(x: 0.33581 * width, y: 0.24616 * height))
        path.addCurve(to: CGPoint(x: 0.37499 * width, y: 0.27067 * height), control1: CGPoint(x: 0.35882 * width, y: 0.26003 * height), control2: CGPoint(x: 0.36804 * width, y: 0.26591 * height))
        path.addCurve(to: CGPoint(x: 0.49999 * width, y: 0.25375 * height), control1: CGPoint(x: 0.41536 * width, y: 0.25939 * height), control2: CGPoint(x: 0.45702 * width, y: 0.25375 * height))
        path.addCurve(to: CGPoint(x: 0.625 * width, y: 0.27067 * height), control1: CGPoint(x: 0.54295 * width, y: 0.25375 * height), control2: CGPoint(x: 0.58462 * width, y: 0.25939 * height))
        path.addLine(to: CGPoint(x: 0.64974 * width, y: 0.25505 * height))
        path.addCurve(to: CGPoint(x: 0.70962 * width, y: 0.2264 * height), control1: CGPoint(x: 0.66665 * width, y: 0.24463 * height), control2: CGPoint(x: 0.68663 * width, y: 0.23508 * height))
        path.addCurve(to: CGPoint(x: 0.76237 * width, y: 0.21925 * height), control1: CGPoint(x: 0.73262 * width, y: 0.21773 * height), control2: CGPoint(x: 0.75021 * width, y: 0.21534 * height))
        path.addCurve(to: CGPoint(x: 0.76757 * width, y: 0.35205 * height), control1: CGPoint(x: 0.78189 * width, y: 0.26829 * height), control2: CGPoint(x: 0.78363 * width, y: 0.31256 * height))
        path.addCurve(to: CGPoint(x: 0.81901 * width, y: 0.48617 * height), control1: CGPoint(x: 0.80185 * width, y: 0.38894 * height), control2: CGPoint(x: 0.81901 * width, y: 0.43365 * height))
        path.addCurve(to: CGPoint(x: 0.80566 * width, y: 0.58414 * height), control1: CGPoint(x: 0.81901 * width, y: 0.52306 * height), control2: CGPoint(x: 0.81454 * width, y: 0.55571 * height))
        path.addCurve(to: CGPoint(x: 0.77117 * width, y: 0.6525 * height), control1: CGPoint(x: 0.79677 * width, y: 0.61258 * height), control2: CGPoint(x: 0.78527 * width, y: 0.63535 * height))
        path.addCurve(to: CGPoint(x: 0.71843 * width, y: 0.69579 * height), control1: CGPoint(x: 0.75706 * width, y: 0.66965 * height), control2: CGPoint(x: 0.73947 * width, y: 0.68408 * height))
        path.addCurve(to: CGPoint(x: 0.65723 * width, y: 0.72119 * height), control1: CGPoint(x: 0.69738 * width, y: 0.70751 * height), control2: CGPoint(x: 0.67697 * width, y: 0.71597 * height))
        path.addCurve(to: CGPoint(x: 0.5905 * width, y: 0.73292 * height), control1: CGPoint(x: 0.63747 * width, y: 0.7264 * height), control2: CGPoint(x: 0.61524 * width, y: 0.73032 * height))
        path.addCurve(to: CGPoint(x: 0.62434 * width, y: 0.82536 * height), control1: CGPoint(x: 0.61306 * width, y: 0.75244 * height), control2: CGPoint(x: 0.62434 * width, y: 0.78326 * height))
        path.addCurve(to: CGPoint(x: 0.63249 * width, y: 0.98224 * height), control1: CGPoint(x: 0.62434 * width, y: 0.97052 * height), control2: CGPoint(x: 0.62706 * width, y: 0.97703 * height))
        path.addCurve(to: CGPoint(x: 0.6582 * width, y: 0.98679 * height), control1: CGPoint(x: 0.63791 * width, y: 0.98743 * height), control2: CGPoint(x: 0.64648 * width, y: 0.98896 * height))
        path.addCurve(to: CGPoint(x: 0.90462 * width, y: 0.80613 * height), control1: CGPoint(x: 0.7589 * width, y: 0.95337 * height), control2: CGPoint(x: 0.84104 * width, y: 0.89315 * height))
        path.addCurve(to: CGPoint(x: 0.99999 * width, y: 0.51219 * height), control1: CGPoint(x: 0.9682 * width, y: 0.71911 * height), control2: CGPoint(x: 0.99999 * width, y: 0.62114 * height))
        path.addCurve(to: CGPoint(x: 0.93292 * width, y: 0.26125 * height), control1: CGPoint(x: 0.99997 * width, y: 0.42151 * height), control2: CGPoint(x: 0.97761 * width, y: 0.33786 * height))
        path.closeSubpath()
        return path
    }
    
}
