//
//  ViewController2.swift
//  MultiViewControllers
//
//  Created by Stanley Chiang on 7/7/19.
//  Copyright © 2019 Stanley Chiang. All rights reserved.
//

import UIKit

class ViewController2: MultiViewController {
    
    let COLOR = UIColor.blue
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = COLOR
        self.view.layer.opacity = OPACITY
        
        addSwitchButton(frame: CGRect(origin: CGPoint(x: self.view.frame.width - 100,
                                                      y: self.view.frame.height - 100),
                                      size: BUTTONSIZE))

    }
    
    @objc override func switchController(sender: UIButton) {
        let viewController = ViewController()
        add(viewController, frame: self.view.frame)
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.vcArray.append(viewController)
    }
    
}
