//
//  ViewController.swift
//  iosStudy
//
//  Created by willix on 4/05/18.
//  Copyright © 2018 willix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mainview = self.view! //you add this
        //my code starts here:
        let v = UIView(frame: CGRect(x: 100, y: 100, width: 50, height: 50))
        v.backgroundColor = .red //small red square
        mainview.addSubview(v)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

