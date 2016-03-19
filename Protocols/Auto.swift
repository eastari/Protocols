//
//  Auto.swift
//  Protocols
//
//  Created by Евгений Стариков on 18.03.16.
//  Copyright © 2016 Starikov Evgen. All rights reserved.
//

import Foundation

class Auto: WheelOutput, CarInput {
    
    var engine: EngineInput!
    
    var metersPass : Float = 0
    var needToGoMetters : Float = 0
    
    
    func wheelDidRotate(meters: Int) {
        metersPass += Float(meters)
        if metersPass >= needToGoMetters {
            self.engine.stop()
        }
        print("Metters passed : \(metersPass)")
    }
    
    func go(meters: Int) {
        needToGoMetters = Float(meters)
        engine.start()
        metersPass = 0
    }
}

