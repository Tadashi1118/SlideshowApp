//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 吉田直志 on 2018/10/09.
//  Copyright © 2018年 Tadashi1118. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var buttonLabel: UIButton!
    
        var dispImageNo = 0
        var timer: Timer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let image = UIImage(named: "photo0.jpg")
        imageView.image = image
        }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        }
    
        func dispImage() {
            imageView.image = UIImage(named: "photo\(dispImageNo).jpg") // 既に宣言済みなのでvarはいらない
        }
    
        @objc func countUp() {
            // 2秒ごとにカウントアップするメソッドの作成
            // if構文で、限界を超えた値は0に戻すメソッドの作成
            if dispImageNo < 2 {
                        dispImageNo += 1
                    } else {
                        dispImageNo = 0
                    }
                self.dispImage()
            }
    
        @IBAction func startTimer(_ sender: Any) {
            if(buttonLabel.titleLabel!.text == "再生" && self.timer == nil)  {
                        self.timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(countUp), userInfo: nil, repeats: true)
                        self.buttonLabel.setTitle("停止", for: .normal)
                } else {
                        self.timer.invalidate()  // 現在のタイマーを破棄する
                        self.buttonLabel.setTitle("再生", for: .normal)
                        self.timer = nil
                }
            }
    
        @IBAction func goTimer(_ sender: Any) {
            if self.timer == nil {
                    countUp()
                }
                self.dispImage()
            }
    
        @IBAction func returnTimer(_ sender: Any) {
            if self.timer == nil {
                    countUp()
                }
                self.dispImage()
            }

        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {  // 2ページ目に渡すメソッド
            let  expansionView: ExpansionView = segue.destination as! ExpansionView
            expansionView.image = UIImage(named: "photo\(dispImageNo).jpg")
            }
    
            @IBAction func unwind(_ segue: UIStoryboardSegue) {
                // 他の画面から segue を使って戻ってきた時に呼ばれる
            }
    
    }

