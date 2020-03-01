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
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override var prefersStatusBarHidden: Bool {
      return true
    }
    
    func timeLabel() {
        let cal = Calendar.current
        let comps: Set<Calendar.Component> = [
            .year, .month, .day, .hour, .minute
        ]
        let dateTimeComponents = cal.dateComponents(comps, from: Date())
        let timeLabel = UILabel(frame: CGRect(x: 0.0, y: view.frame.height * 0.1 , width: view.frame.width, height: curClock * labelFontOffset ))
        timeLabel.text = String(dateTimeComponents.hour!) + ":" + String(dateTimeComponents.minute!)
        timeLabel.textAlignment = .center
        timeLabel.font = .clockDisplay
        view.addSubview(timeLabel)
    }

}
