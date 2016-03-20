//
//  Wheel.swift
//  Protocols
//
//  Created by Евгений Стариков on 18.03.16.
//  Copyright © 2016 Starikov Evgen. All rights reserved.
//

import Foundation

class Wheels: WheelsInput {
    
    weak var output: WheelOutput!
    
    func rotate(grad: Int) {
        output.wheelDidRotate(1)
    }
}