//
//  ViewController.swift
//  teste
//
//  Created by Andreia Bonomi on 11/08/20.
//  Copyright © 2020 Andreia Bonomi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var enterImage: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonChange () {
        
        let imageCat = UIImage(named: "cat")
        image.image = imageCat;
    }


}

