//
//  ViewController.swift
//  SlideshowApp
//
//  Created by bitman vam on 2018/02/03.
//  Copyright © 2018年 watomon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   weak var images: UIImageView = ["01.png", "02.png", "03.png"]
    
    @IBOutlet weak var dispImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        dispImage = images[0]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

