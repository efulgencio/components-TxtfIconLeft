//
//  ViewController.swift
//  UITextFieldAbout
//
//  Created by eduardo fulgencio on 12/01/2020.
//  Copyright © 2020 Eduardo Fulgencio Comendeiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtficonLeft: UITextFieldiconLeft!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
              calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5917804241, blue: 0.0205632858, alpha: 1)
              calcBtn.setTitle("Formatear", for: .normal)
              calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
              calcBtn.addTarget(self, action: #selector(ViewController.formatear), for: .touchUpInside)
              
              // Relaciona un input y el button
              txtficonLeft.inputAccessoryView = calcBtn
    }

    @objc func formatear() {
        if let wageTxt = txtficonLeft.text {
            // formatear el campo
            self.view.endEditing(true)
        }
    }

}

