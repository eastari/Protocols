//
//  Engine.swift
//  Protocols
//
//  Created by Евгений Стариков on 18.03.16.
//  Copyright © 2016 Starikov Evgen. All rights reserved.
//

import Foundation

class Engine: EngineInput, AxisOutput {
    
    weak var rotor: Rotateble?
    
    var stoped = true
    
    func start() {
        print("engine start")
        stoped = false
        rotor?.rotate()
        
    }
    
    func stop() {
        print("engine stoped")
        stoped = true
    }
    
    func didRotated() {
        print("engine ROTATED")
        if stoped != true {
            rotor?.rotate()
        }
    }
}