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
        let mainview = self.view!
        
        let v1 = UIView(frame: CGRect(x: 100, y: 111, width: 132, height: 194))
        v1.backgroundColor = UIColor(red: 1, green: 0.4, blue: 1, alpha: 1)
        let v2 = UIView()
        v2.backgroundColor = UIColor(red: 0.5, green: 1, blue: 0, alpha: 1)
        let v3 = UIView()
        v3.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
        
        mainview.addSubview(v1)
        v1.addSubview(v2)
        v2.addSubview(v3)
        v2.translatesAutoresizingMaskIntoConstraints = false
        v3.translatesAutoresizingMaskIntoConstraints = false
        
        let d = ["v2": v2, "v3": v3]
        NSLayoutConstraint.activate([
            NSLayoutConstraint.constraints(withVisualFormat: "H:|[v2]|", options: [], metrics: nil, views: d),
            NSLayoutConstraint.constraints(withVisualFormat: "V:|[v2(10)]", options: [], metrics: nil, views: d),
            NSLayoutConstraint.constraints(withVisualFormat: "H:[v3(20)]|", options: [], metrics: nil, views: d),
            NSLayoutConstraint.constraints(withVisualFormat: "V:[v3(20)]|", options: [], metrics: nil, views: d)
            ].flatMap{$0})
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

