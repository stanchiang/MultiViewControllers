//
//  ViewController.swift
//  MultiViewControllers
//
//  Created by Stanley Chiang on 7/7/19.
//  Copyright © 2019 Stanley Chiang. All rights reserved.
//

import UIKit

class ViewController: MultiViewController {

    let COLOR = UIColor.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = COLOR
        self.view.layer.opacity = OPACITY
        
        addSwitchButton(frame: CGRect(origin: .zero,
                                      size: BUTTONSIZE))
    }

    
    @objc override func switchController(sender: UIButton) {
        let viewController1 = ViewController1()
        add(viewController1, frame: self.view.frame)
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.vcArray.append(viewController1)
        
    }

}

