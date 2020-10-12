//
//  ViewController.swift
//  SwiftBasicKod
//
//  Created by Bill Martensson on 2020-10-12.
//

import UIKit


class ViewController: UIViewController {
    
    var myNumber = 7

    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        
        print(myNumber)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
        
        var myNumber = 123
        
        myNumber = 99
        
        print(myNumber)
        
        let calcResult = letsCalculate(thenumber: 23, otherNumber: 3)
        
        print(calcResult)
    }

    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
    }

    func letsCalculate(thenumber : Int, otherNumber : Int) -> String
    {
        let timesTwoNumber = thenumber * otherNumber
        
        let resultText = "\(thenumber) gånger \(otherNumber) är \(timesTwoNumber)"
        
        return resultText
    }
    
}

