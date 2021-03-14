//
//  PayPalLogo.swift
//  NomaePreferences
//
//  Created by Eamon Tracey on 3/12/21.
//  Copyright © 2021 Eamon Tracey. All rights reserved.
//

import SwiftUI

struct PaypalLogo: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.83765*width, y: 0.25836*height))
        path.addCurve(to: CGPoint(x: 0.84023*width, y: 0.21637*height), control1: CGPoint(x: 0.83934*width, y: 0.2446*height), control2: CGPoint(x: 0.84023*width, y: 0.23059*height))
        path.addCurve(to: CGPoint(x: 0.62385*width, y: 0), control1: CGPoint(x: 0.84023*width, y: 0.09688*height), control2: CGPoint(x: 0.74335*width, y: 0))
        path.addCurve(to: CGPoint(x: 0.21631*width, y: 0.03886*height), control1: CGPoint(x: 0.2395*width, y: 0), control2: CGPoint(x: 0.22008*width, y: 0.01643*height))
        path.addLine(to: CGPoint(x: 0.08307*width, y: 0.8308*height))
        path.addCurve(to: CGPoint(x: 0.12901*width, y: 0.88511*height), control1: CGPoint(x: 0.07829*width, y: 0.85922*height), control2: CGPoint(x: 0.10019*width, y: 0.88511*height))
        path.addCurve(to: CGPoint(x: 0.30756*width, y: 0.84627*height), control1: CGPoint(x: 0.284*width, y: 0.88511*height), control2: CGPoint(x: 0.30379*width, y: 0.8687*height))
        path.addCurve(to: CGPoint(x: 0.30818*width, y: 0.84259*height), control1: CGPoint(x: 0.30756*width, y: 0.84627*height), control2: CGPoint(x: 0.30778*width, y: 0.84495*height))
        path.addLine(to: CGPoint(x: 0.28975*width, y: 0.95213*height))
        path.addCurve(to: CGPoint(x: 0.33024*width, y: height), control1: CGPoint(x: 0.28554*width, y: 0.97717*height), control2: CGPoint(x: 0.30484*width, y: height))
        path.addCurve(to: CGPoint(x: 0.48643*width, y: 0.96575*height), control1: CGPoint(x: 0.46599*width, y: height), control2: CGPoint(x: 0.4831*width, y: 0.98552*height))
        path.addLine(to: CGPoint(x: 0.5193*width, y: 0.7704*height))
        path.addCurve(to: CGPoint(x: 0.58826*width, y: 0.71207*height), control1: CGPoint(x: 0.52496*width, y: 0.73672*height), control2: CGPoint(x: 0.55412*width, y: 0.71207*height))
        path.addCurve(to: CGPoint(x: 0.91759*width, y: 0.41313*height), control1: CGPoint(x: 0.78376*width, y: 0.71207*height), control2: CGPoint(x: 0.91759*width, y: 0.57823*height))
        path.addCurve(to: CGPoint(x: 0.83765*width, y: 0.25836*height), control1: CGPoint(x: 0.91759*width, y: 0.34925*height), control2: CGPoint(x: 0.88601*width, y: 0.29278*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.83765*width, y: 0.25836*height))
        path.addCurve(to: CGPoint(x: 0.49959*width, y: 0.55701*height), control1: CGPoint(x: 0.81696*width, y: 0.42668*height), control2: CGPoint(x: 0.6735*width, y: 0.55701*height))
        path.addCurve(to: CGPoint(x: 0.35007*width, y: 0.59363*height), control1: CGPoint(x: 0.37591*width, y: 0.55701*height), control2: CGPoint(x: 0.35624*width, y: 0.57218*height))
        path.addLine(to: CGPoint(x: 0.28975*width, y: 0.95213*height))
        path.addCurve(to: CGPoint(x: 0.33024*width, y: height), control1: CGPoint(x: 0.28554*width, y: 0.97717*height), control2: CGPoint(x: 0.30484*width, y: height))
        path.addCurve(to: CGPoint(x: 0.48643*width, y: 0.96575*height), control1: CGPoint(x: 0.46599*width, y: height), control2: CGPoint(x: 0.4831*width, y: 0.98552*height))
        path.addLine(to: CGPoint(x: 0.5193*width, y: 0.7704*height))
        path.addCurve(to: CGPoint(x: 0.58826*width, y: 0.71207*height), control1: CGPoint(x: 0.52496*width, y: 0.73672*height), control2: CGPoint(x: 0.55412*width, y: 0.71207*height))
        path.addCurve(to: CGPoint(x: 0.91759*width, y: 0.41313*height), control1: CGPoint(x: 0.78376*width, y: 0.71207*height), control2: CGPoint(x: 0.91759*width, y: 0.57823*height))
        path.addLine(to: CGPoint(x: 0.91759*width, y: 0.41313*height))
        path.addCurve(to: CGPoint(x: 0.83765*width, y: 0.25836*height), control1: CGPoint(x: 0.91759*width, y: 0.34925*height), control2: CGPoint(x: 0.88601*width, y: 0.29278*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.39868*width, y: 0.55701*height))
        path.addCurve(to: CGPoint(x: 0.83765*width, y: 0.25836*height), control1: CGPoint(x: 0.6735*width, y: 0.55701*height), control2: CGPoint(x: 0.81696*width, y: 0.42668*height))
        path.addCurve(to: CGPoint(x: 0.72771*width, y: 0.22325*height), control1: CGPoint(x: 0.80662*width, y: 0.23628*height), control2: CGPoint(x: 0.7687*width, y: 0.22325*height))
        path.addCurve(to: CGPoint(x: 0.40376*width, y: 0.27447*height), control1: CGPoint(x: 0.43434*width, y: 0.22325*height), control2: CGPoint(x: 0.40874*width, y: 0.2449*height))
        path.addLine(to: CGPoint(x: 0.35006*width, y: 0.59363*height))
        path.addCurve(to: CGPoint(x: 0.39868*width, y: 0.55701*height), control1: CGPoint(x: 0.35623*width, y: 0.57218*height), control2: CGPoint(x: 0.37591*width, y: 0.55701*height))
        path.closeSubpath()
        return path
    }
}

struct PayPalLogo_Previews: PreviewProvider {
    static var previews: some View {
        PaypalLogo()
            .fill(Color.blue)
            .frame(maxWidth: 87, maxHeight: 87)
    }
}
