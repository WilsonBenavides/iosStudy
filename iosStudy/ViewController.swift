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
        
        NSLayoutConstraint.activate([
            v2.leadingAnchor.constraint(equalTo: v1.leadingAnchor),
            v2.trailingAnchor.constraint(equalTo: v1.trailingAnchor),
            v2.topAnchor.constraint(equalTo: v1.topAnchor),
            v2.heightAnchor.constraint(equalToConstant: 10),
            v3.widthAnchor.constraint(equalToConstant: 20),
            v3.heightAnchor.constraint(equalToConstant: 20),
            v3.trailingAnchor.constraint(equalTo: v1.trailingAnchor),
            v3.bottomAnchor.constraint(equalTo: v1.bottomAnchor)
        ])
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

