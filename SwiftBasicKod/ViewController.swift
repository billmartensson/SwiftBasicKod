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
        
        /*
        let calcResult = letsCalculate(thenumber: 23, otherNumber: 3, calcType: "*")
        
        print(calcResult)
        
        print(letsCalculate(thenumber: 3, otherNumber: 2, calcType: "+"))
        print(letsCalculate(thenumber: 8, otherNumber: 2, calcType: "-"))
        print(letsCalculate(thenumber: 1, otherNumber: 4, calcType: "/"))

        print(letsCalculate(thenumber: 1, otherNumber: 4, calcType: "BANAN"))
        */
        
        // ARRAY
        
        var allTheResults = [String]()
        
        allTheResults.append(letsCalculate(thenumber: 23, otherNumber: 3, calcType: "*"))
        allTheResults.append(letsCalculate(thenumber: 3, otherNumber: 2, calcType: "+"))
        allTheResults.append(letsCalculate(thenumber: 8, otherNumber: 2, calcType: "-"))
        allTheResults.append(letsCalculate(thenumber: 1, otherNumber: 4, calcType: "/"))
        allTheResults.append(letsCalculate(thenumber: 1, otherNumber: 4, calcType: "BANAN"))

        print(allTheResults)
        
        if(allTheResults.contains("FEL!!"))
        {
            print("Det finns fel i listan")
        }
        
        for currentResult in allTheResults {
            if(currentResult != "FEL!!")
            {
                print(currentResult)
            }
        }
        
        // DICTIONARY
        var personInfo = [String : String]()
        personInfo["name"] = "Torsten"
        personInfo["age"] = "42"
        
        print(personInfo)
        print(personInfo.keys)
        print("\(personInfo["name"]!) är \(personInfo["age"]!) år gammal")
    }

    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
    }

    func letsCalculate(thenumber : Int, otherNumber : Int, calcType : String) -> String
    {
        /*
        let timesTwoNumber = thenumber * otherNumber
        
        let resultText = "\(thenumber) gånger \(otherNumber) är \(timesTwoNumber)"
        
        return resultText
        */
        
        var calcResult : Double = 0
        
        /*
        if(calcType == "+")
        {
            calcResult = Double(thenumber + otherNumber)
        }
        if(calcType == "-")
        {
            calcResult = Double(thenumber - otherNumber)
        }
        if(calcType == "*")
        {
            calcResult = Double(thenumber * otherNumber)
        }
        if(calcType == "/")
        {
            calcResult = Double(thenumber) / Double(otherNumber)
        }
        */
        
        switch calcType {
            case "+":
                calcResult = Double(thenumber + otherNumber)
            case "-":
                calcResult = Double(thenumber - otherNumber)
            case "*":
                calcResult = Double(thenumber * otherNumber)
            case "/":
                calcResult = Double(thenumber) / Double(otherNumber)
            default:
                return "FEL!!"
        }
        
        
        
        let resultText = "\(thenumber) \(calcType) \(otherNumber) är \(calcResult)"
        return resultText

        
    }
    
}

