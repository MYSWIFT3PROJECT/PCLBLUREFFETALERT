//
//  ViewController.swift
//  PCLBlurEffectAlertDemo
//
//  Created by macOSX on 2/5/17.
//  Copyright © 2017 macOSX. All rights reserved.
//

import UIKit
import PCLBlurEffectAlert

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    
    
    @IBAction func CallAlert(_ sender: Any) {
        let alert = PCLBlurEffectAlert.Controller(title: "PCLBlurEffectAlert Title", message: "PCLBlurEffectAlert Message", effect: UIBlurEffect(style: .dark), style: .actionSheet)
        let alertbtn = PCLBlurEffectAlert.AlertAction(title: "Cancle", style: .cancel, handler: nil)
       
        
        alert.addAction(alertbtn)
        alert.configure(cornerRadius: 10)
        alert.configure(overlayBackgroundColor: UIColor(red: 0, green: 60, blue: 5, alpha: 0.1))
        alert.configure(titleFont: UIFont.boldSystemFont(ofSize: 15), titleColor: UIColor.lightGray)
        alert.configure(messageFont: UIFont.systemFont(ofSize: 13), messageColor: UIColor.white)
        alert.show()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

