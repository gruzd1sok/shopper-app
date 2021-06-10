//
//  ViewController.swift
//  shopper-app
//
//  Created by Илья Груздев on 22.03.2021.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var totalHours: UILabel!
    @IBOutlet weak var wageTxt: CustomTextField!
    @IBOutlet weak var priceTxt: CustomTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let test = wageTxt.text
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
    }

    @objc func calculate(){
        
        let wage = wageTxt.text!
        let price = priceTxt.text!
        
        if let value = Double(wage) {
            if let val = Double(price){
                totalHours.text = String(Wage.getHourse(forWage: Double(wage)!, andPrice: Double(price)!))
            } else {
                print("Price field is not num!")
            }
        }  else {
            print("Wage field is not num!")
        }
        
    }

}

