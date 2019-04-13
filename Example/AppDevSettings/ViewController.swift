//
//  ViewController.swift
//  AppDevSettings
//
//  Created by Drew Dunne on 04/11/2019.
//  Copyright (c) 2019 Drew Dunne. All rights reserved.
//

import UIKit
import AppDevSettings

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        view.backgroundColor = .white

        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Settings", style: .plain, target: self, action: #selector(didPressSettings))
    }

    @objc func didPressSettings() {
        let settingsVc = SettingsViewController(config: MySettings.settings)
        present(UINavigationController(rootViewController: settingsVc), animated: true, completion: nil)
    }

}

