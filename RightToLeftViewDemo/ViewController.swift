//
//  ViewController.swift
//  RightToLeftViewDemo
//
//  Created by ray on 15/11/19.
//  Copyright © 2015年 ray. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var right:RightToLeftView!;
    override func viewDidLoad() {
        super.viewDidLoad()
        right = RightToLeftView.viewFromNibNamed();
        self.view.addSubview(right);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
   
    @IBAction func click(sender: AnyObject) {
        if(right.isShow){
            right.hidden();
        }else{
             right.show(sender.frame);
        }
    }

}

