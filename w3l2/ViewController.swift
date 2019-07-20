//
//  ViewController.swift
//  w3l2
//
//  Created by Okami on 2019/7/20.
//  Copyright © 2019 Okami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer:Timer!
    var counter = 0.0
    var speed = 2.0
    @IBOutlet weak var segment: UISegmentedControl!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let newView = UIView(frame: CGRect(x: 0, y:0, width: 100,height: 100))
        newView.center = self.view.center
        newView.backgroundColor = UIColor.red
        newView.transform = CGAffineTransform(rotationAngle: 0)
        view.addSubview(newView)
        timer = Timer.scheduledTimer(withTimeInterval: 0.03, repeats: true, block: { (t) in
            self.rotateView(targateView: newView)
        })
    }
    func rotateView(targateView:UIView){
        let angle = counter * Double.pi / 180
        targateView.transform = CGAffineTransform(rotationAngle: CGFloat(angle))
        counter += speed
        
        
    }
    
    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        print(sender.value)
        speed = Double(sender.value)
    }
    
}
