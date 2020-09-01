//
//  AboutAppViewController.swift
//  qrcodeProject
//
//  Created by Andreia Bonomi on 28/08/20.
//  Copyright © 2020 Andreia Bonomi. All rights reserved.
//

import UIKit

import Foundation

class AboutViewController: UIViewController  {
    @IBOutlet weak var menu: UIView!
    @IBOutlet weak var github: UIButton!
    @IBOutlet weak var linkedin: UIButton!
    
    override func viewDidLoad() {
        menu.layer.cornerRadius = 40;
        menu.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
    }
    
    @IBAction func openLinkedin(_ sender: Any) {
        guard let url = URL(string: "https://linkedin.com/in/andreiabonomi/") else { return }
        UIApplication.shared.open(url)
    }
    
    @IBAction func openGitHub(_ sender: Any) {
        guard let url = URL(string: "https:/github.com/bonomiandreia") else { return }
        UIApplication.shared.open(url)
        
    }
}
