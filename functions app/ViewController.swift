//
//  ViewController.swift
//  functions app
//
//  Created by STEVEN HOBERG on 9/23/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gradeIn: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func gradeButtonAction(_ sender: UIButton) {
        pass(Double(gradeIn.text ?? "0.00"))
    }
    
    func pass(_ num: Double)->String{
        
        if num < 50{
            return "fail"
        }
        else{
            return "pass"
        }
        
    }
    

}

