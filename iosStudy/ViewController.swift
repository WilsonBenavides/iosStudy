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
        
        v1.addConstraint(
            NSLayoutConstraint(item: v2, attribute: .leading, relatedBy: .equal, toItem: v1, attribute: .leading, multiplier: 1, constant: 0)
        )
        v1.addConstraint(
            NSLayoutConstraint(item: v2, attribute: .trailing, relatedBy: .equal, toItem: v1, attribute: .trailing, multiplier: 1, constant: 0)
        )
        v1.addConstraint(
            NSLayoutConstraint(item: v2, attribute: .top, relatedBy: .equal, toItem: v1, attribute: .top, multiplier: 1, constant: 0)
        )
        v2.addConstraint(
            NSLayoutConstraint(item: v2, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 10)
        )
        v3.addConstraint(
            NSLayoutConstraint(item: v3, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 20)
        )
        v3.addConstraint(
            NSLayoutConstraint(item: v3, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 20)
        )
        v1.addConstraint(
            NSLayoutConstraint(item: v3, attribute: .trailing, relatedBy: .equal, toItem: v1, attribute: .trailing, multiplier: 1, constant: 0)
        )
        v1.addConstraint(
            NSLayoutConstraint(item: v3, attribute: .bottom, relatedBy: .equal, toItem: v1, attribute: .bottom, multiplier: 1, constant: 0)
        )
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

