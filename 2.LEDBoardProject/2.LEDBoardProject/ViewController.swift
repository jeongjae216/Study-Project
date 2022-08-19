//
//  ViewController.swift
//  2.LEDBoardProject
//
//  Created by 정재 on 2022/08/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var contentsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let settingViewController = segue.destination as? SettingViewController {
            settingViewController.delegate = self
            settingViewController.text = contentsLabel.text
            settingViewController.textColor = contentsLabel.textColor
            settingViewController.backGroundColor = self.view.backgroundColor ?? .black
        }
    }
    

}


extension ViewController: SettingViewDelegate {
    
    func changedSetting(text: String?, textColor: UIColor, backGroundColor: UIColor) {
        if let text = text {
            self.contentsLabel.text = text
            
        }
        self.contentsLabel.textColor = textColor
        self.view.backgroundColor = backGroundColor
    }
    
}

