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
        
        let lab1 = UILabel(frame: CGRect(x: 313, y: 20, width: 42, height: 22))
        lab1.autoresizingMask = [.flexibleLeftMargin, .flexibleBottomMargin]
        lab1.text = "Hello"
        
        let lab2 = UILabel()
        lab2.translatesAutoresizingMaskIntoConstraints = false
        lab2.text = "Howdy"
        
        self.view.addSubview(lab1)
        self.view.addSubview(lab2)
        
        NSLayoutConstraint.activate([
            lab2.topAnchor.constraint(equalTo: lab1.bottomAnchor, constant: 20),
            lab2.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20)
        ])

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

