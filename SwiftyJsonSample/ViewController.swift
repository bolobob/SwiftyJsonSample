//
//  ViewController.swift
//  SwiftyJsonSample
//
//  Created by 青木 真一 on 2015/05/31.
//  Copyright (c) 2015年 bolobob. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Alamofire.request(.GET, "https://api.github.com/users/bolobob/starred")
            .responseJSON() { request, response, data, error in
                //println(data)
                if let json = data as? [Dictionary<String, AnyObject>] {
                    //println(json[0]["owner"])
                    if let owner = json[0]["owner"] as? Dictionary<String, AnyObject> {
                        if let avatar_url = owner["avatar_url"] as? String {
                            println(avatar_url)
                        }
                    }
                }

                let swiftyJson = JSON(data!)
                if let avatar_url = swiftyJson[0]["owner"]["avatar_url"].string {
                    println(avatar_url)
                }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

