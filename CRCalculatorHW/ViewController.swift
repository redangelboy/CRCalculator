//
//  ViewController.swift
//  CRCalculatorHW
//
//  Created by Consultant on 10/30/22.
//

import UIKit

class ViewController: UIViewController {
    
    var operation = 0
    var v1 = ""
    
    @IBOutlet weak var screen: UITextField!
    
    @IBOutlet weak var bclear: UIButton!
    
    @IBOutlet weak var b7: UIButton!
    
    @IBOutlet weak var b4: UIButton!
    
    @IBOutlet weak var b1: UIButton!
    
    @IBOutlet weak var b0: UIButton!
    
    @IBOutlet weak var bsign: UIButton!
    
    @IBOutlet weak var b8: UIButton!
    
    @IBOutlet weak var b5: UIButton!
    
    @IBOutlet weak var b2: UIButton!
    
    @IBOutlet weak var bpercentage: UIButton!
    
    @IBOutlet weak var b9: UIButton!
    
    @IBOutlet weak var b6: UIButton!
    
    @IBOutlet weak var b3: UIButton!
    
    @IBOutlet weak var bdot: UIButton!
    
    @IBOutlet weak var bdiv: UIButton!
    
    @IBOutlet weak var bmultiplication: UIButton!
    
    @IBOutlet weak var bres: UIButton!
    
    @IBOutlet weak var bsum: UIButton!
    
    @IBOutlet weak var bequal: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func abclear(_ sender: Any) {
        v1 = ""
        screen.text = ""
    }
    
    @IBAction func ab7(_ sender: Any) {
        screen.text = screen.text! + "7"
    }
    
    @IBAction func ab4(_ sender: Any) {
        screen.text = screen.text! + "4"
    }
    
    @IBAction func ab1(_ sender: Any) {
        screen.text = screen.text! + "1"
    }
    
    @IBAction func ab0(_ sender: Any) {
        screen.text = screen.text! + "0"
    }
    
    @IBAction func absign(_ sender: Any) {
    }
    
    @IBAction func ab8(_ sender: Any) {
        screen.text = screen.text! + "8"
    }
    
    @IBAction func ab5(_ sender: Any) {
        screen.text = screen.text! + "5"
    }
    
    @IBAction func ab2(_ sender: Any) {
        screen.text = screen.text! + "2"
    }
    
    @IBAction func abpercentage(_ sender: Any) {
        v1 = screen.text! + "/100"
        let expression = NSExpression(format:v1)
        let value = expression.expressionValue(with: nil, context: nil) as? Double
        if let unwrap = value{
            screen.text = "\(unwrap)"

        }
    }
    
    @IBAction func ab9(_ sender: Any) {
        screen.text = screen.text! + "9"
    }
    
    @IBAction func ab6(_ sender: Any) {
        screen.text = screen.text! + "6"
    }
    
    @IBAction func ab3(_ sender: Any) {
        screen.text = screen.text! + "3"
    }
    
    @IBAction func abdot(_ sender: Any) {
        screen.text = screen.text! + "."
    }
    
    @IBAction func abdiv(_ sender: Any) {
        v1 = screen.text! + "/"
        screen.text = " "
    }
    
    @IBAction func abmultiplication(_ sender: Any) {
        v1 = screen.text! + "*"
        screen.text = ""
    }
    
    @IBAction func abres(_ sender: Any) {
        v1 = screen.text! + "-"
        screen.text = ""
    }
    
    @IBAction func absum(_ sender: Any) {
        v1 += screen.text! + "+"
        screen.text = ""
    }
    
    @IBAction func abequal(_ sender: Any) {
        v1 += screen.text!
        let expression = NSExpression(format:v1)
        let value = expression.expressionValue(with: nil, context: nil) as? Double
        if let unwrap = value{
            screen.text = "\(unwrap)"
            v1 = ""
        }
        

        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    


