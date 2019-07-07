//
//  Extensions.swift
//  MultiViewControllers
//
//  Created by Stanley Chiang on 7/7/19.
//  Copyright © 2019 Stanley Chiang. All rights reserved.
//

import UIKit

//https://www.hackingwithswift.com/example-code/uikit/how-to-use-view-controller-containment
@nonobjc extension UIViewController {
    func add(_ child: UIViewController, frame: CGRect? = nil) {
        addChild(child)
        
        if let frame = frame {
            child.view.frame = frame
        }
        
        view.addSubview(child.view)
        child.didMove(toParent: self)
    }
    
    func remove() {
        willMove(toParent: nil)
        view.removeFromSuperview()
        removeFromParent()
    }
}
