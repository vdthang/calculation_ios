//
//  ViewController.swift
//  Caculator
//
//  Created by Thang Vo on 10/17/17.
//  Copyright © 2017 Thang Vo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var textInput = ""
    var firstNumber = ""
    var mOperator = ""
    
    @IBOutlet weak var lblScreen: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func handleButtonPress(_ sender: UIButton) {
        let textLabel = sender.titleLabel?.text
        if let text = textLabel {
            switch text {
            case "+","-","x","/":
                mOperator = text
                firstNumber = textInput
                clearScreen()
                break
            case "C":
                clearScreen()
                break
            case "=":
                calculate()
                break
                
            default:
                textInput += text
                lblScreen.text = textInput
                break
            }
        }else{
            print("null")
        }
    }
    
    func clearScreen() {
        textInput = ""
        lblScreen.text = "0"
    }
    
    func calculate(){
        if(mOperator.isEmpty){
            lblScreen.text = "Loi"
        }else{
            var result:Int = 0
            var number1 = Int(firstNumber)!
            var number2 = Int(textInput)!
            switch mOperator {
                case "+":
                    result = number1 + number2
                    break
            case "-":
                 result = number1 - number2
                break
            case "x":
                 result = number1 * number2
                break
            case "/":
                 result = number1 / number2
                 break
      
            default:
                break
            }
            lblScreen.text = String(format:"= %d",result)
        }
    }
    

}

