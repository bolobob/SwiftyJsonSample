//
//  ViewController.swift
//  SwiftyJsonSample
//
//  Created by 青木 真一 on 2015/05/31.
//  Copyright (c) 2015年 bolobob. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Alamofire.request(.GET, "https://api.github.com/users/bolobob/starred")
            .responseJSON() { request, response, data, error in
                println(data)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

