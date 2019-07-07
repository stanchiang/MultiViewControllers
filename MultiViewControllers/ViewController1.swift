//
//  ViewController1.swift
//  MultiViewControllers
//
//  Created by Stanley Chiang on 7/7/19.
//  Copyright © 2019 Stanley Chiang. All rights reserved.
//

import UIKit

class ViewController1: MultiViewController {

    let COLOR = UIColor.green
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = COLOR
        self.view.layer.opacity = OPACITY
        
        addSwitchButton(frame: CGRect(origin: CGPoint(x: 0,
                                                      y: self.view.frame.height - 100),
                                      size: BUTTONSIZE))
    }
    
    @objc override func switchController(sender: UIButton) {
        let viewController2 = ViewController2()
        add(viewController2, frame: self.view.frame)
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.vcArray.append(viewController2)
        
    }
}
