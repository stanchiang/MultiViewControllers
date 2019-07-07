//
//  MultiViewController.swift
//  MultiViewControllers
//
//  Created by Stanley Chiang on 7/7/19.
//  Copyright © 2019 Stanley Chiang. All rights reserved.
//

import UIKit

class MultiViewController: UIViewController {
    
    let OPACITY:Float = 0.5
    let BUTTONSIZE = CGSize(width: 100, height: 100)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addResetButton(frame: CGRect(origin: CGPoint(x: self.view.frame.width - 100,
                                                     y: 0),
                                     size: BUTTONSIZE))
    }
    
    func addSwitchButton(frame: CGRect) {
        let button = UIButton(frame: frame)
        button.backgroundColor = UIColor.black
        button.setTitle("switch", for: .normal)
        button.addTarget(self, action: #selector(switchController(sender:)), for: .touchUpInside)
        self.view.addSubview(button)
    }
    
    func addResetButton(frame: CGRect) {
        let button = UIButton(frame: frame)
        button.backgroundColor = UIColor.black
        button.setTitle("reset", for: .normal)
        button.addTarget(self, action: #selector(resetControllers(sender:)), for: .touchUpInside)
        self.view.addSubview(button)
    }
    
    @objc func switchController(sender: UIButton) {
        
    }
    
    @objc func resetControllers(sender: UIButton) {
        var vcArray = (UIApplication.shared.delegate as! AppDelegate).vcArray

        while vcArray.count > 1 {
            guard let vc = vcArray.popLast() else { return }
            vc.remove()
        }
    }
}
