//
//  AddAlarmViewController.swift
//  galarm
//
//  Created by John Park on 3/8/20.
//  Copyright © 2020 John Park. All rights reserved.
//

import UIKit

class AddAlarmViewController: UIViewController {

    var frameWidth: CGFloat!
    var frameHeight: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        frameWidth = view.frame.width
        frameHeight = view.frame.height
        addButtons()
        addTextField()
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    func addTextField() {
        let alarmTextField = UITextField(frame: CGRect(x: 0.0, y: frameHeight * 0.15, width: frameWidth * 0.8, height: curClock * 1.1))
        alarmTextField.center.x = view.center.x
        alarmTextField.text = "00:00"
        alarmTextField.textAlignment = .center
        alarmTextField.font = .clockDisplay
//        alarmTextField.addTarget(self, action: , for: .touchUpInside)
        alarmTextField.keyboardType = UIKeyboardType.numberPad
        view.addSubview(alarmTextField)
    }
    
    func addButtons() {
        let cancelButton =  UIButton(frame: CGRect(x: 0.0, y: frameHeight * 0.08, width: frameWidth * 0.9, height: frameWidth * 0.1))
        cancelButton.center.x = view.center.x
        cancelButton.backgroundColor = .red
        cancelButton.layer.masksToBounds = true
        cancelButton.layer.cornerRadius = cancelButton.frame.width / 18.63
        cancelButton.setTitle("Cancel Alarm", for: .normal)
        cancelButton.setTitleColor(.gray, for: .selected)
        cancelButton.addTarget(self, action: #selector(cancelButtonPressed), for: .touchUpInside)
        view.addSubview(cancelButton)
        
        let saveButton =  UIButton(frame: CGRect(x: 0.0, y: frameHeight * 0.9, width: frameWidth * 0.9, height: frameWidth * 0.1))
        saveButton.center.x = view.center.x
        saveButton.backgroundColor = .buttonColor
        saveButton.layer.masksToBounds = true
        saveButton.layer.cornerRadius = saveButton.frame.width / 18.63
        saveButton.setTitle("Save Alarm", for: .normal)
        saveButton.setTitleColor(.gray, for: .selected)
        saveButton.addTarget(self, action: #selector(cancelButtonPressed), for: .touchUpInside)
        view.addSubview(saveButton)
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
    
    @objc func addButtonPressed() {
        let date = Date().addingTimeInterval(10)
        let timer = Timer(fireAt: date, interval: 0, target: self, selector: #selector(runCode), userInfo: nil, repeats: false)
        RunLoop.main.add(timer, forMode: .common)
        
        let transition = CATransition()
        transition.duration = 0.5
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        transition.type = CATransitionType.moveIn
        transition.subtype = CATransitionSubtype.fromBottom
        navigationController?.view.layer.add(transition, forKey: nil)
        navigationController?.popViewController(animated: true)
    }
    
    @objc func runCode() {
        print("\n")
        print("yesssirski")
        print("\n")
    }

    
}
