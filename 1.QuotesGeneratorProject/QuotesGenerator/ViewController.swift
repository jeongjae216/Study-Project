//
//  ViewController.swift
//  QuotesGenerator
//
//  Created by 정재 on 2022/08/17.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    let quotes: [Quote] = [
        Quote(contents: "나 자신에 대한 자신감을 잃으면 온 세상이 나의 적이 된다.", name: "랄프 왈도 에머슨"),
        Quote(contents: "인생에서 가장 슬픈 세 가지. \n할 수 있었는데, \n해야 했는데, \n해야만 했는데.", name: "루이스 E. 분"),
        Quote(contents: "인생은 곱셈이다. \n어떤 기회가 와도 내가 제로면 아무런 의미가 없다.", name: "나카무라 미츠루"),
        Quote(contents: "생명이 있는 한 희망이 있다. \n실망을 친구로 삼을 것인가, \n아니면 희망을 친구로 삼을 것인가.", name: "J.위트"),
        Quote(contents: "슬픔이 그대의 삶으로 밀려와 마음을 흔들고 소중한 것을 쓸어가 버릴 때면 그대 가슴에 대고 말하라. \n“이것 또한 지나가리라”", name: "랜터 윌슨 스미스")
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func tapQuotesGeneratorButton(_ sender: Any) {
        let random = Int(arc4random_uniform(5))
        let quote = quotes[random]
        
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.name
    }

}
