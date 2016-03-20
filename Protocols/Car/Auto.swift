//
//  Auto.swift
//  Protocols
//
//  Created by Евгений Стариков on 18.03.16.
//  Copyright © 2016 Starikov Evgen. All rights reserved.
//

import Foundation

class Auto {
    
    var engine: EngineInput?
    
    var metersPass : Float = 0
    var needToGoMetters : Float = 0 
    
}

extension Auto: CarInput {
    
    func go(meters: Int) {
        needToGoMetters = Float(meters)
        
        if let engine = engine {
            engine.start()
        } else {
            print("Error")
            print(__FILE__)
            print(__LINE__)
        }
        
        metersPass = 0
    }
    
}


extension Auto: WheelOutput {
    func wheelDidRotate(meters: Int) {
        metersPass += Float(meters)
        if metersPass >= needToGoMetters {
            if let engine = engine {
                engine.stop()
            } else {
                print("Error")
                print(__FILE__)
                print(__LINE__)
            }
            
        }
        print("Metters passed : \(metersPass)")
    }
    
    
}

