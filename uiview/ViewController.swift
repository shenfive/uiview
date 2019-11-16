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
    var counter = 0.0

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        theView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        theView.center = view.center
        theView.backgroundColor = UIColor.red
        theView.transform = CGAffineTransform(rotationAngle: 0)
        view.addSubview(theView)
        timer = Timer.scheduledTimer(withTimeInterval: 0.03, repeats: true, block: { (timer) in
            self.roteatView(targateView: self.theView)
        })
    }
    
    func roteatView(targateView:UIView){
        print("rotate")
        let a = counter * M_PI / 180
        targateView.transform = CGAffineTransform(rotationAngle: CGFloat(a))
        counter += 4
        
        
    }
    
    
    

    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        print(sender.selectedSegmentIndex)
    }
}

