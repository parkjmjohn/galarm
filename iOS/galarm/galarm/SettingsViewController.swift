//
//  SettingsViewController.swift
//  galarm
//
//  Created by John Park on 3/9/20.
//  Copyright © 2020 John Park. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    var frameWidth: CGFloat!
    var frameHeight: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        frameWidth = view.frame.width
        frameHeight = view.frame.height
        addButtons()
    }

    func addButtons() {
        let cancelButton =  UIButton(frame: CGRect(x: 0.0, y: frameHeight * 0.08, width: frameWidth * 0.9, height: frameWidth * 0.1))
        cancelButton.center.x = view.center.x
        cancelButton.backgroundColor = .red
        cancelButton.layer.masksToBounds = true
        cancelButton.layer.cornerRadius = cancelButton.frame.width / 18.63
        cancelButton.setTitle("Cancel", for: .normal)
        cancelButton.setTitleColor(.gray, for: .selected)
        cancelButton.addTarget(self, action: #selector(cancelButtonPressed), for: .touchUpInside)
        view.addSubview(cancelButton)
    }
    
    @objc func cancelButtonPressed() {
        let transition = CATransition()
        transition.duration = 0.5
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        transition.type = CATransitionType.moveIn
        transition.subtype = CATransitionSubtype.fromBottom
        navigationController?.view.layer.add(transition, forKey: nil)
        navigationController?.popViewController(animated: true)
    }
    
}
