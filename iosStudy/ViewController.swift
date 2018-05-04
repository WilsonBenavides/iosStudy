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
        let v1 = UIView(frame:CGRect(x: 113, y: 111, width: 132, height: 194))
        v1.backgroundColor = UIColor(red: 1, green: 0.4, blue: 1, alpha: 1)
        let v2 = UIView(frame: v1.bounds.insetBy(dx: 10, dy: 10))
        v2.backgroundColor = UIColor(red: 0.5, green: 1, blue: 0, alpha: 1)
        
        mainview.addSubview(v1)
        v1.addSubview(v2)
        v1.transform = CGAffineTransform(rotationAngle: 25 * .pi/180)
        print(v1.frame)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

