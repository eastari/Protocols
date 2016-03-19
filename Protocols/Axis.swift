//
//  Axis.swift
//  Protocols
//
//  Created by Евгений Стариков on 18.03.16.
//  Copyright © 2016 Starikov Evgen. All rights reserved.
//

import Foundation

class Axis : Rotateble {
    
    weak var output : Engine?
    var wheels : WheelsInput!
    
    weak var axisOutput: AxisOutput!
    
    func rotate() {
        print("Axis rotated, wheels = \(wheels)")
        wheels.rotate(360)
        axisOutput.didRotated()
    }
}