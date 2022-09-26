//
//  ViewController.swift
//  functions app
//
//  Created by STEVEN HOBERG on 9/23/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var passOutput: UILabel!
    @IBOutlet weak var gradeIn: UITextField!
    @IBOutlet weak var points1In: UITextField!
    @IBOutlet weak var points2In: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func gradeButtonAction(_ sender: UIButton) {
        print("->\(gradeIn.text)")
        if gradeIn.text! != "" {
        passOutput.text = "\(pass(Double(gradeIn.text!) ?? 0.00)) \(letter(Double(gradeIn.text!) ?? 0.00))"
        }
        else{
            let temp = points(Double(points1In.text!) ?? 0.00,Double(points2In.text!) ?? 0.00)
            passOutput.text = "\(temp.0) \(temp.1)"
        }
        
    }
    
    func pass(_ num: Double)->String{
        
        if num < 50{
            return "Fail"
        }
        else{
            return "Pass"
        }
        
    }
    func letter(_ num: Double)->String{
        if num >= 90{
            return "A"
        }
        else if num >= 80{
            return "B"
        }
        else if num >= 70{
            return "C"
        }
        else if num >= 60{
            return "D"
        }
        else{
            return "F"
        }
    }
    func points(_ num1: Double, _ num2: Double)->(Double,String){
        let numOut = num1 / num2
        let letter = letter(numOut)
        return (numOut,letter)
    }
    

}

