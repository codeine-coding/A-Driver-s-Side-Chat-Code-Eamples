//
//  ViewController.swift
//  viewcontrollertimelapse
//
//  Created by Allen Whearry on 2/8/19.
//  Copyright © 2019 Codeine Technologies LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let subView = SubClassedView()
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.addSubview(subView)
//        subView.frame = view.frame
//    }
    
    override func loadView() {
        view = subView
    }
}

