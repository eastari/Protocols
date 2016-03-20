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
        
        car.go(20)
    }
}

