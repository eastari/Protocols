//
//  Engine.swift
//  Protocols
//
//  Created by Евгений Стариков on 18.03.16.
//  Copyright © 2016 Starikov Evgen. All rights reserved.
//

import Foundation

class Engine: EngineInput, AxisOutput {
    
    var rotor: Rotateble?
    
    var stoped = true
    
    func start() {
        print("engine start")
        stoped = false
        if let rotor = rotor {
            rotor.rotate()
        } else {
            print("Error")
            print(__FILE__)
            print(__LINE__)
        }
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