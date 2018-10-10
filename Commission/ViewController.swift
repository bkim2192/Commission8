//
//  ViewController.swift
//  Commission
//
//  Created by Brandon Kim on 10/5/18.
//  Copyright © 2018 Brandon Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var commissionPayTextField: UITextField!
    @IBOutlet weak var totalPayLabel: UILabel!
    let basePay:Int = 500
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
    }

    @IBAction func calculateOnTapped(_ sender: UIButton)
    {
        getInput()
        
    }
    
    func getInput(){
        if let data = commissionPayTextField.text, let commissionPay = Int(data){
            print("Everything's Fine")
        } else {
            print("Error Occured")
        }
    }
    
}

