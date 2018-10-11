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
        let comPay = getInput()
        let totalPay = comPay + Double(basePay)
        let formattedPay = String(format: "%.2f", totalPay)
        totalPayLabel.text = "Total Pay = $\(formattedPay)"
        
    }
    
    func getInput() -> Double //Returns the Double (->)
    {
        if let data = commissionPayTextField.text, let commissionPay = Double(data){
            return commissionPay
        } else {
            return 0
        }
    }
    
}


