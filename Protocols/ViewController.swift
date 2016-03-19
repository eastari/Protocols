//
//  ViewController.swift
//  Protocols
//
//  Created by Евгений Стариков on 18.03.16.
//  Copyright © 2016 Starikov Evgen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let car = CarAssembly.createCar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        //let myCar = car[0] as! Auto
        //myCar.go(20)
        
        car.go(20)
        
        
        print(__FILE__)
        print(__LINE__)
        
    }
}

