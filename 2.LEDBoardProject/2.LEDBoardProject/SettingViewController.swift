//
//  SettingViewController.swift
//  2.LEDBoardProject
//
//  Created by 정재 on 2022/08/19.
//

import UIKit

protocol SettingViewDelegate: AnyObject {
    func changedSetting(text: String?, textColor: UIColor, backGroundColor: UIColor)
}

class SettingViewController: UIViewController {
    
    weak var delegate: SettingViewDelegate?
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var yellowButton: UIButton!
    @IBOutlet weak var brownButton: UIButton!
    @IBOutlet weak var blackButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    
    var text: String?
    var textColor: UIColor = .red
    var backGroundColor: UIColor = .black
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configure()
    }
    
    
    private func configure() {
        if let text = self.text {
            self.textField.text = text
        }
        self.changeTextColor(color: self.textColor)
        self.changeBackgroundColor(color: self.backGroundColor)
    }

    
    @IBAction func tapTextColorButton(_ sender: UIButton) {
        if sender == self.redButton {
            changeTextColor(color: .red)
            self.textColor = .red
        } else if sender == self.yellowButton {
            changeTextColor(color: .yellow)
            self.textColor = .yellow
        } else {
            changeTextColor(color: .brown)
            self.textColor = .brown
        }
    }
    @IBAction func tapBackgroundColorButton(_ sender: UIButton) {
        if sender == self.blackButton {
            changeBackgroundColor(color: .black)
            self.backGroundColor = .black
        } else if sender == self.blueButton {
            changeBackgroundColor(color: .blue)
            self.backGroundColor = .blue
        } else {
            changeBackgroundColor(color: .green)
            self.backGroundColor = .green
        }
    }
    @IBAction func tapSaveButton(_ sender: UIButton) {
        self.delegate?.changedSetting(
            text: self.textField.text,
            textColor: self.textColor,
            backGroundColor: self.backGroundColor
        )
        self.navigationController?.popViewController(animated: true)
    }
    
    
    private func changeTextColor(color: UIColor) {
        self.redButton.alpha = color == UIColor.red ? 1 : 0.2
        self.yellowButton.alpha = color == UIColor.yellow ? 1 : 0.2
        self.brownButton.alpha = color == UIColor.brown ? 1 : 0.2
    }
    private func changeBackgroundColor(color: UIColor) {
        self.blackButton.alpha = color == UIColor.black ? 1 : 0.2
        self.blueButton.alpha = color == UIColor.blue ? 1 : 0.2
        self.greenButton.alpha = color == UIColor.green ? 1 : 0.2
    }
    
    
}
