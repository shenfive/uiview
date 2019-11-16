//
//  ViewController.swift
//  uiview
//
//  Created by 申潤五 on 2019/11/16.
//  Copyright © 2019 申潤五. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var segment: UISegmentedControl!
    var timer:Timer!
    var counter = 0.0

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        var newView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        newView.center = view.center
        newView.backgroundColor = UIColor.red
        newView.transform = CGAffineTransform(rotationAngle: 0)
        newView.layer.cornerRadius = 15
        newView.clipsToBounds = true
        
        view.addSubview(newView)
        timer = Timer.scheduledTimer(withTimeInterval: 0.03, repeats: true, block: { (timer) in
            self.roteatView(targateView: newView)
        })
    }
    
    //轉 View
    func roteatView(targateView:UIView){
        let a = counter * M_PI / 180
        targateView.transform = CGAffineTransform(rotationAngle: CGFloat(a))
        if segment.selectedSegmentIndex == 0 {
            counter += 4
        }else{
            counter -= 4
        }
        
        
        
    }
    
    
    

    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        print(sender.selectedSegmentIndex)
    }
}

