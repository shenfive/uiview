//
//  ViewController.swift
//  uiview
//
//  Created by 申潤五 on 2019/11/16.
//  Copyright © 2019 申潤五. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var theView:UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        theView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        theView.center = self.view.center
        theView.backgroundColor = UIColor.red
        self.view.addSubview(theView)
        
        
    }

    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        print(sender.selectedSegmentIndex)
    }
}

