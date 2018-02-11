//
//  ViewController.swift
//  SlideshowApp
//
//  Created by bitman vam on 2018/02/03.
//  Copyright © 2018年 watomon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var test: UILabel!
    var imageNum = 0
    var state = 0
    
    var timer: Timer!
    var timer_sec: Float = 0
    
    //画像をタップして拡大
    @IBAction func tapImageView(_ sender: Any) {
        performSegue(withIdentifier: "result", sender: nil)
    }
    
    //戻る
    @IBAction func unwind(_segue: UIStoryboardSegue) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
            
        //myImageView = UIImageView(frame: CGRectMake(0, 0, 100, 120));
        
        //画像を表示させる
        displayImage()
    }
    
    @IBOutlet weak var myImageView: UIImageView!
    
    //3つのボタンのラベル
    @IBOutlet weak var preViewButton: UIButton!
    @IBOutlet weak var nextViewButton: UIButton!
    @IBOutlet weak var slideShowButton: UIButton!
    
    //進むを押した時の動作
    @IBAction func nextImage(_ sender: Any) {
        self.imageNum += 1
        if self.imageNum > 2 {
            self.imageNum = 0
        }
        displayImage()
    }
    
    //戻るを押した時の動作
    @IBAction func preImage(_ sender: Any) {
        self.imageNum -= 1
        if self.imageNum < 0 {
            self.imageNum = 2
        }
        displayImage()
    }
    
    //再生・停止を押した時の動作
    @IBAction func slidshoeImage(_ sender: Any) {
        
        //押されるたびに加算する
        self.state += 1
        
        displayImage()
        //奇数のとき、再生を表す。
        if ((self.state) % 2) == 1 {
            self.timer_sec = 0
            
            //タイマーの作成、移動
            //動作中のタイマーを一つに保つために、timerが存在しない場合にのみ、タイマーを生成する。
            if self.timer == nil {
                self.timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector:
                    #selector(updateTimer), userInfo: nil, repeats: true)
                //毎2秒の時にスライドさせる。
                if self.timer_sec >= 0.5 {
                    self.imageNum += 1
                    if self.imageNum > 2 {
                        self.imageNum = 0
                    }
                    self.timer_sec = 0
                }
                
            }
            
       }
        
        //進むボタンと戻るボタンを無効にする
        preViewButton.isEnabled = false
        nextViewButton.isEnabled = false
        
        //偶数ならば、タイマーをリセットしてボタンを有効にする
        if ((self.state) % 2) == 0 {
            self.timer_sec = 0
            //リセット
            if self.timer != nil {
                self.timer.invalidate()
                self.timer = nil
            }
            
            preViewButton.isEnabled = true
            nextViewButton.isEnabled = true
        }
        
        
    }

    //画像を表示するメソッド
    func displayImage() {
        //画像データを文字列の配列で管理
        let images = ["01.png", "02.png", "03.png"]
        
        //表示する画像を設定する
        let image = UIImage(named: images[imageNum])
        
        //画像をUIImageViewに設定する
        myImageView.image = image
    }
    
    @objc func updateTimer(timer: Timer) {
        self.timer_sec += 0.1
        self.test.text = String(format: "%.1f", timer_sec)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

