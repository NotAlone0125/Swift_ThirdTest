//
//  ViewController.swift
//  AlamofireTest
//
//  Created by 杨昱航 on 2017/9/19.
//  Copyright © 2017年 杨昱航. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //get请求
        /*
        Alamofire.request("http://httpbin.org/get", method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil).responseJSON { (returnResult) in
            guard let result = returnResult.result.value else {
                print((returnResult.result.error)!)
                return
            }
            
            print(result)
        }
 */
        
        //post请求
        /*
        Alamofire.request("http://httpbin.org/post", method: .post, parameters: ["name":"yyh"], encoding: URLEncoding.default, headers: nil).responseJSON { (returnResult) in
            guard let result = returnResult.result.value else {
                print((returnResult.result.error)!)
                return
            }
            
            print(result)
        }
 */
        
        NetworkTools.requestData(type: .Get, url: "http://httpbin.org/get") { (returnResult) in
            print(returnResult)
        }
    }
}

