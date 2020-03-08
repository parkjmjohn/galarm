//
//  ProfileViewController.swift
//  galarm
//
//  Created by John Park on 3/8/20.
//  Copyright © 2020 John Park. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    var frameWidth: CGFloat!
    var frameHeight: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        frameWidth = view.frame.width
        frameHeight = view.frame.height
        addButtons()
    }
    
    func addButtons(){
        let backButton = UIButton(frame: CGRect(x: frameWidth * 0.1, y: frameHeight * 0.875, width: frameWidth * 0.175, height: frameWidth * 0.175))
        backButton.backgroundColor = .buttonColor
        backButton.layer.masksToBounds = true
        backButton.layer.cornerRadius = backButton.frame.width / 2.0
        backButton.setTitle("back", for: .normal)
        backButton.setTitleColor(.gray, for: .selected)
        backButton.addTarget(self, action: #selector(addBackButtonPressed), for: .touchUpInside)
        view.addSubview(backButton)
        
        let settingsButton = UIButton(frame: CGRect(x: frameWidth * 0.725, y: frameHeight * 0.875, width: frameWidth * 0.175, height: frameWidth * 0.175))
        settingsButton.backgroundColor = .buttonColor
        settingsButton.layer.masksToBounds = true
        settingsButton.layer.cornerRadius = settingsButton.frame.width / 2.0
        settingsButton.setTitle("setting", for: .normal)
        settingsButton.setTitleColor(.gray, for: .selected)
        settingsButton.addTarget(self, action: #selector(settingsButtonPressed), for: .touchUpInside)
        view.addSubview(settingsButton)
    }
     
    @objc func addBackButtonPressed() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc func settingsButtonPressed() {
    }

}
