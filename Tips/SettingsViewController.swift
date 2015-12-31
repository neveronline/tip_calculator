//
//  SettingsViewController.swift
//  Tips
//
//  Created by Jun Hao on 12/30/15.
//  Copyright © 2015 Jun Hao. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var slider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func scorlling(sender: AnyObject) {
        var percentage :Int = Int(slider.value)
        var copy :Double = Double(percentage)/100
        label.text = "\(percentage)%"
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setDouble(copy, forKey: "customize")
        defaults.synchronize()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
