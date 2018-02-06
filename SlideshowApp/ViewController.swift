//
//  ViewController.swift
//  SlideshowApp
//
//  Created by bitman vam on 2018/02/03.
//  Copyright © 2018年 watomon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //画像データを文字列の配列で管理
    var images = ["01.png", "02.png", "03.png"]
    
    @IBOutlet weak var myImageView: UIImageView!
    
    @IBAction func nextImage(_ sender: Any) {
    }
    
    @IBAction func preImage(_ sender: Any) {
    }
    
    @IBAction func slidshoeImage(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
            
        //myImageView = UIImageView(frame: CGRectMake(0, 0, 100, 120));
        
        var imageNum = 0
        //表示する画像を設定する
        let myImage = UIImage(named: images[imageNum])
        
        //画像をUIImageViewに設定する
        myImageView.image = myImage
        
        //画像の位置を設定する
        //myImageView.layer.position = CGPoint(x: self.view.bounds.width/2, y: 200.0)
        
        //画像を表示させる
        self.view.addSubview(myImageView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

