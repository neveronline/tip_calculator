//
//  ViewController.swift
//  Tips
//
//  Created by Jun Hao on 12/29/15.
//  Copyright © 2015 Jun Hao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipsAmount: UILabel!
    
    @IBOutlet weak var billAmount: UITextField!
    
    @IBOutlet weak var totalAmount: UILabel!
    
    @IBOutlet weak var ownTip: UISwitch!
    
    @IBOutlet weak var people: UITextField!
   
    @IBOutlet weak var average: UILabel!
    var tip = 0.00
    var isOn = false
    var total = Double.init()
    
   
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "Check Out"
        tipsAmount.text = "$ 0.00"
        totalAmount.text = "$ 0.00"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func switchChange(sender: AnyObject) {
       
        if ownTip.on{
            
            isOn = true
            
            
        }
        else{
            isOn = false
            
        }
        
        
    }
    @IBAction func onEditingChanged(sender: AnyObject) {
        
        
        var percentage = [0.15,0.18,0.2]
        
        var tipselect = percentage[tipControl.selectedSegmentIndex]
        
        var bill = NSString(string: billAmount.text!).doubleValue
        
        let tipPercentage = NSUserDefaults.standardUserDefaults().doubleForKey("customize")
        
        
        
        if isOn == false {
         tip = bill * tipselect
        }
        else
        {
            tip = bill * tipPercentage
        }
         total = bill + tip
        
        tipsAmount.text = "$ \(tip)"
        totalAmount.text = "$ \(total)"
        
        tipsAmount.text = String(format: "$%.2f", tip)
        totalAmount.text = String(format: "$%.2f", total)
        
       
        
    }

    @IBAction func onTap(sender: AnyObject) {
        
            view.endEditing(true)
        
    }
  
    
    @IBAction func calculateAverage(sender: AnyObject) {
        var avg = NSString(string: people.text!).doubleValue
        
        avg = total / avg
        
        average.text = "$ \(avg)"
        average.text = String(format: "$%.2f",avg)
    }
    
}

