//
//  ViewController.swift
//  qrcodeProject
//
//  Created by Andreia Bonomi on 09/08/20.
//  Copyright © 2020 Andreia Bonomi. All rights reserved.
//

import UIKit

class QRCodeViewController: UIViewController {
    @IBOutlet weak var generatorButton: UIButton!
    @IBOutlet weak var textgenerator: UITextField!
    @IBOutlet weak var imageQRCODE: UIImageView!
    
    @IBOutlet weak var menu1: UIView!
    
    override func viewDidLoad() {
        let imageNil = UIImage(named: "Exclusão 1")
        imageQRCODE.image = imageNil;
        // Do any additional setup after loading the view.
        
        menu1.layer.cornerRadius = 40;
        menu1.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
    
    
    @IBAction func generatorQRCODE(_ sender: Any) {
        if let string = textgenerator.text {
            let data = string.data(using: .ascii, allowLossyConversion: false)
            let filter = CIFilter(name: "CIQRCodeGenerator")
            filter?.setValue(data, forKey: "InputMessage")
            let ciImage = filter?.outputImage
            let transform = CGAffineTransform(scaleX: 10, y: 10)
            let transformImage = ciImage?.transformed(by: transform)
            let image = UIImage(ciImage: transformImage!)
            
            imageQRCODE.image = image;
            
            
            
        }
        
    }
}


