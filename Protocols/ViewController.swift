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
    var carDelegate : CarInput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        self.carDelegate = car
        
        carDelegate.go(20)

        
    }
}

