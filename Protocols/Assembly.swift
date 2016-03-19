//
//  Assembly.swift
//  Protocols
//
//  Created by Евгений Стариков on 19.03.16.
//  Copyright © 2016 Starikov Evgen. All rights reserved.
//

import Foundation

class CarAssembly {
    class func createCar() -> [AnyObject] {
        
        let myCar = Auto()
        let myEngine = Engine()
        let myAxis = Axis()
        let myWheel = Wheels()
        
        myEngine.rotor = myAxis
        myCar.engine = myEngine
        myAxis.axisOutput = myEngine
        myAxis.wheels = myWheel
        myWheel.output = myCar
        
        return [myCar, myEngine, myAxis, myWheel]
    }

}