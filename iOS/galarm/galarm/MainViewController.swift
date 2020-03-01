//
//  MainViewController.swift
//  galarm
//
//  Created by John Park on 2/29/20.
//  Copyright © 2020 John Park. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        timeLabel()
    }
    
    func timeLabel() {
        let cal = Calendar.current
        let comps: Set<Calendar.Component> = [
            .year, .month, .day, .hour, .minute
        ]
        let dateTimeComponents = cal.dateComponents(comps, from: Date())
        let timeLabel = UILabel(frame: CGRect(x: 0.0, y: 0.0, width: 100, height: 200))
        timeLabel.center.x = self.view.center.x
        timeLabel.center.y = self.view.center.y
        timeLabel.text = String(dateTimeComponents.hour!) + ":" + String(dateTimeComponents.minute!)
        timeLabel.font = UIFont(name: "San Francisco", size: 20.0)
        view.addSubview(timeLabel)
    }

}
