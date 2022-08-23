//
//  ViewController.swift
//  3.CalculatorsProject
//
//  Created by 정재 on 2022/08/23.
//

import UIKit


enum Operation {
    case Plus
    case Subtract
    case Divide
    case Multiply
    case unknown
}

class ViewController: UIViewController {

    @IBOutlet weak var numberOutputLabel: UILabel!
    
    var displayNum: String = ""
    var firstOperand: String = ""
    var secondOperand: String = ""
    var result: String = ""
    var currentOperation: Operation = .unknown
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func tapNumberButton(_ sender: UIButton) {
        guard let numberValue = sender.title(for: .normal) else { return }
        if self.displayNum.count < 9 {
            self.displayNum += numberValue
            self.numberOutputLabel.text = self.displayNum
        }
    }
    @IBAction func tapClearButton(_ sender: UIButton) {
        self.displayNum = ""
        self.firstOperand = ""
        self.secondOperand = ""
        self.result = ""
        self.currentOperation = .unknown
        self.numberOutputLabel.text = "0"
    }
    @IBAction func tapDotButton(_ sender: UIButton) {
        if displayNum.count < 8, !self.displayNum.contains(".") {
            self.displayNum += self.displayNum.isEmpty ? "0." : "."
            self.numberOutputLabel.text = self.displayNum
        }
    }
    @IBAction func tapDivideButton(_ sender: UIButton) {
        self.operation(.Divide)
    }
    @IBAction func tapMultiplyButton(_ sender: UIButton) {
        self.operation(.Multiply)
    }
    @IBAction func tapSubtractButton(_ sender: UIButton) {
        self.operation(.Subtract)
    }
    @IBAction func tapPlusButton(_ sender: UIButton) {
        self.operation(.Plus)
    }
    @IBAction func tapEqualButton(_ sender: UIButton) {
        self.operation(self.currentOperation)
    }
    
    func operation(_ operation: Operation) {
        if self.currentOperation != .unknown {
            
            if !self.displayNum.isEmpty {
                
                self.secondOperand = self.displayNum
                self.displayNum = ""
                
                guard let firstOperand = Double(self.firstOperand) else { return }
                guard let secondOperand = Double(self.secondOperand) else { return }
                
                switch self.currentOperation {
                case .Plus:
                    self.result = "\(firstOperand + secondOperand)"
                case .Subtract:
                    self.result = "\(firstOperand - secondOperand)"
                case .Multiply:
                    self.result = "\(firstOperand * secondOperand)"
                case .Divide:
                    self.result = "\(firstOperand / secondOperand)"
                default:
                        break
                }
                
                if let result = Double(self.result), result.truncatingRemainder(dividingBy: 1) == 0 {
                    self.result = "\(Int(result))"
                }
                
                self.firstOperand = self.result
                self.numberOutputLabel.text = self.result
            
            }
            
            self.currentOperation = operation
            
        } else {
            self.firstOperand = self.displayNum
            self.currentOperation = operation
            self.displayNum = ""
        }
    }
    
    
}

