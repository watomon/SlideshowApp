//
//  UpImageViewController.swift
//  SlideshowApp
//
//  Created by bitman vam on 2018/02/07.
//  Copyright © 2018年 watomon. All rights reserved.
//

import UIKit

class UpImageViewController: UIViewController {

    @IBOutlet weak var upImageView: UIImageView!
    
    var imageNum = 1
    
    @IBAction func returnButton(_ sender: Any) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //displayImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func displayImage() {
        //画像データを文字列の配列で管理
        let images = ["01.png", "02.png", "03.png"]
        
        //表示する画像を設定する
        let image = UIImage(named: images[imageNum])
        
        //画像をUIImageViewに設定する
        upImageView.image = image
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
