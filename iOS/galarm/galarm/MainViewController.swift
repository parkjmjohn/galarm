//
//  MainViewController.swift
//  galarm
//
//  Created by John Park on 2/29/20.
//  Copyright © 2020 John Park. All rights reserved.
//

import UIKit


class MainViewController: UIViewController {

    var frameWidth: CGFloat!
    var frameHeight: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        frameWidth = view.frame.width
        frameHeight = view.frame.height
        addTimeLabel()
        addButtons()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
     
    override var prefersStatusBarHidden: Bool {
      return true
    }
    
    func addTimeLabel() {
        let cal = Calendar.current
        let comps: Set<Calendar.Component> = [
            .year, .month, .day, .hour, .minute
        ]
        let dateTimeComponents = cal.dateComponents(comps, from: Date())
        
        let timeLabel = UILabel(frame: CGRect(x: 0.0, y: frameHeight * 0.1 , width: frameWidth, height: curClock * labelFontOffset ))
        timeLabel.text = String(dateTimeComponents.hour!) + ":" + String(dateTimeComponents.minute!)
        timeLabel.textAlignment = .center
        timeLabel.font = .clockDisplay
        view.addSubview(timeLabel)
    }
    
    func addButtons() {
        let alarmButton = UIButton(frame: CGRect(x: frameWidth * 0.1, y: frameHeight * 0.875, width: frameWidth * 0.175, height: frameWidth * 0.175))
        alarmButton.backgroundColor = .buttonColor
        alarmButton.layer.masksToBounds = true
        alarmButton.layer.cornerRadius = alarmButton.frame.width / 2.0
        alarmButton.setTitle("add", for: .normal)
        alarmButton.setTitleColor(.gray, for: .selected)
        alarmButton.addTarget(self, action: #selector(addAlarmButtonPressed), for: .touchUpInside)
        view.addSubview(alarmButton)
        
        let profileButton = UIButton(frame: CGRect(x: frameWidth * 0.725, y: frameHeight * 0.875, width: frameWidth * 0.175, height: frameWidth * 0.175))
        profileButton.backgroundColor = .buttonColor
        profileButton.layer.masksToBounds = true
        profileButton.layer.cornerRadius = profileButton.frame.width / 2.0
        profileButton.setTitle("profile", for: .normal)
        profileButton.setTitleColor(.gray, for: .selected)
        profileButton.addTarget(self, action: #selector(profileButtonPressed), for: .touchUpInside)
        view.addSubview(profileButton)
    }
    
    @objc func addAlarmButtonPressed() {
        let transition = CATransition()
        transition.duration = 0.5
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        transition.type = CATransitionType.moveIn
        transition.subtype = CATransitionSubtype.fromTop
        navigationController?.view.layer.add(transition, forKey: nil)
        navigationController?.pushViewController(AddAlarmViewController(), animated: false)
    }
    
    @objc func profileButtonPressed() {
        navigationController?.pushViewController(ProfileViewController(), animated: true)
    }


}
