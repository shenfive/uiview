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
    var timer:Timer!
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        theView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        theView.center = view.center
        theView.backgroundColor = UIColor.red
        theView.transform = CGAffineTransform(rotationAngle: 0)
        view.addSubview(theView)
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: { (timer) in
            self.roteatView(targateView: self.theView)
        })
    }
    
    func roteatView(targateView:UIView){
        print("rotate")
    }
    
    
    

    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        print(sender.selectedSegmentIndex)
    }
}

