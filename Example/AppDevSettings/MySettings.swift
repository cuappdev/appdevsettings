//
//  MySettings.swift
//  AppDevSettings_Example
//
//  Created by Drew Dunne on 4/12/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation
import AppDevSettings

enum MySettings {

    static let settings = SettingsConfig(
        sections: [
            [
                .bool(
                    "Dark Mode",
                    key: "my_bool_key",
                    completion: { val in
                        print("Changed to: \(val)")
                    }
                ),
                .int(
                    "Number of apps",
                    key: "my_int_key",
                    completion: { val in
                        print("Changed to: \(val)")
                    }
                )
            ],
            [
                .string(
                    "Your name",
                    key: "my_bool_key",
                    completion: { val in
                        print("Changed to: \(val)")
                    }
                ),
                .button(
                    "Logout",
                    style: .destructive,
                    action: { vc in
                        print("Button pressed")
                    }
                ),
                .button(
                    "Detail",
                    style: .detail,
                    action: { (vc: SettingsViewController?) in
                        print("Detail pressed")
                        vc?.navigationController?.pushViewController(UIViewController(), animated: true)
                }
                )
            ]
        ],
        headerImage: UIImage(named: "appdev"),
        headerHeight: 100
    )

}
