//
//  ViewController.swift
//  PassCardView
//
//  Created by Broccoli on 15/11/30.
//  Copyright © 2015年 Broccoli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sw = UISwitch(frame: CGRect(x: 20, y: 20, width: 100, height: 100))
        view.addSubview(sw)
        
        let control = PassCardView(center: CGPoint(x: UIScreen.mainScreen().bounds.width / 2, y: 300))
        view.addSubview(control)
        control.becomeFirstResponder()
        
        control.passwordChangeBlock = {
            passwordString in
            debugPrint(passwordString)
            if passwordString.lengthOfBytesUsingEncoding(NSUTF8StringEncoding) == 6 {
                sw.on = true
            } else {
                sw.on = false
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

