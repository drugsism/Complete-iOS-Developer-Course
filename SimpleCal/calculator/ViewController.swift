//
//  ViewController.swift
//  calculator
//
//  Created by James Roh on 2022/09/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNum: UITextField!
    @IBOutlet weak var secondNum: UITextField!
    @IBOutlet weak var resultNum: UILabel!
    
    var resultText = "Input Number"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func resetNumberfield() {
        firstNum.text = ""
        secondNum.text = ""
        resultNum.text = resultText
    }
    @IBAction func sumClicked(_ sender: Any) {
        if let firstNumber = Int(firstNum.text!){
            if let secondNumber = Int(secondNum.text!){
                
                let result = firstNumber + secondNumber
                resultNum.text = String(result)
            }
        } else {
            resetNumberfield()
        }
    }
    @IBAction func minusClicked(_ sender: Any) {
        if let firstNumber = Int(firstNum.text!){
            if let secondNumber = Int(secondNum.text!){
                
                let result = firstNumber - secondNumber
                resultNum.text = String(result)
            }
        } else {
            resetNumberfield()
        }
    }
    @IBAction func multiplyClicked(_ sender: Any) {
        if let firstNumber = Int(firstNum.text!){
            if let secondNumber = Int(secondNum.text!){
                
                let result = firstNumber * secondNumber
                resultNum.text = String(result)
            }
        } else {
            resetNumberfield()
        }
    }
    @IBAction func divideClicked(_ sender: Any) {
        if let firstNumber = Int(firstNum.text!){
            if let secondNumber = Int(secondNum.text!){
                
                let result = firstNumber / secondNumber
                resultNum.text = String(result)
            }
        } else {
            resetNumberfield()
        }
    }
    
    
}

