//
//  NextViewController.swift
//  eggApp
//
//  Created by 濱山知香 on 2019/08/15.
//  Copyright © 2019 hmym.com. All rights reserved.
//

import UIKit
// imageViewの画像を配列で切り替える方法

class NextViewController: UIViewController {
    var countBox: Int = 100
    // 配列番号に使う変数dispImageNoを宣言し、0を代入
    var dispImageNo = 0
    
    func dispImage() {
        // imageArrayに画像を配列で代入
        let imageArray = ["egg1", "egg2", "egg3"]
        // imageArrayから０番目の画像を取り出しnameに代入
        let name = imageArray[dispImageNo]
        // nameに代入された画像をimageに代入
        let image = UIImage(named: name)
        // nextImageViewにimageに代入された画像を表示
        nextImageView.image = image
    }
    
    @IBOutlet weak var nextTextLabel: UILabel!
    
    @IBOutlet weak var nextImageView: UIImageView!
    
    @IBAction func nextbuttonAction(_ sender: Any) {
        // カウントを下げる
        countBox -= 1
        // カウントをラベルに表示
        nextCountLabel.text = String(countBox)
        
        // カウント数によってコメントの表示を変える
        if countBox == 99 {
            nextTextLabel.text = "hooooooo!"
        } else if countBox == 80 {
            nextTextLabel.text = "yoooooo!"
        } else if countBox <= 0 {
            nextCountLabel.text = "0"
            nextTextLabel.text = "さよなら〜"
        }
        
        // カウント数によって画像を切り替える
        if countBox == 50 {
            dispImageNo += 1
        } else if countBox == 0 {
            dispImageNo += 1
        }
        dispImage()
    }
    
    @IBOutlet weak var nextCountLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        nextCountLabel.text = String(countBox)
        // Do any additional setup after loading the view.
      
    }
    
    override func viewDidAppear(_ animated: Bool) {
        dispImage()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
