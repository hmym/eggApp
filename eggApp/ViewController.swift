//
//  ViewController.swift
//  eggApp
//
//  Created by 濱山知香 on 2019/08/15.
//  Copyright © 2019 hmym.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var countBox: Int = 100
    
    @IBOutlet weak var commentLabel: UILabel!
    
    @IBOutlet weak var buttonImage: UIButton!
    @IBAction func tappedEggButton(_
        sender: Any) {
        let image = UIImage(named: "egg2")
        let image2 = UIImage(named: "egg3")
        let state = UIControl.State.normal
        
        

       // let image: UIImage = UIImage(named: "egg2")!
        countBox -= 1
        countLabel.text = String(countBox)
        
            if countBox == 99 {
                commentLabel.text = "む？"
            } else if countBox == 80 {
                commentLabel.text = "ぬおおおおお"
            } else if countBox == 70 {
                commentLabel.text = "にゃー"
            } else if countBox == 50 {
                commentLabel.text = "にゃわん？"
                buttonImage.setImage(image, for: state)

            } else if countBox == 30 {
                commentLabel.text = "わわん？"
            } else if countBox <= 0 {
                countLabel.text = "0"
                commentLabel.text = "くまだよん"
                buttonImage.setImage(image2, for: state)
        }
        
    }
    
    @IBOutlet weak var countLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

