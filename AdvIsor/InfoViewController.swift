//
//  InfoViewController.swift
//  AdvIsor
//
//  Created by Daniel Kweon on 2/18/18.
//  Copyright © 2018 Daniel Kweon. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var saveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        saveButton.layer.cornerRadius = 12
        saveButton.clipsToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBOutlet weak var housing: UITextField!
    @IBOutlet weak var transportation: UITextField!
    @IBOutlet weak var food: UITextField!
    @IBOutlet weak var debt: UITextField!
    @IBOutlet weak var misc: UITextField!
    
    @IBOutlet weak var lb1: UILabel!
    @IBOutlet weak var lb2: UILabel!
    @IBOutlet weak var lb3: UILabel!
    @IBOutlet weak var lb4: UILabel!
    @IBOutlet weak var lb5: UILabel!
    
    @IBAction func saveButton(_ sender: Any) {
        let defaults = UserDefaults.standard
        
        defaults.set(housing.text, forKey: "Housing")
        defaults.set(transportation.text, forKey: "Trans")
        defaults.set(food.text, forKey: "Food")
        defaults.set(debt.text, forKey: "Debt")
        defaults.set(misc.text, forKey: "Misc")

        defaults.synchronize()
        
        var sum = 0
        
        let temp1 = defaults.object(forKey: "Housing") as! String
        sum = sum + Int(temp1)!
        let temp2 = defaults.object(forKey: "Trans") as! String
        sum = sum + Int(temp2)!
        let temp3 = defaults.object(forKey: "Food") as! String
        sum = sum + Int(temp3)!
        let temp4 = defaults.object(forKey: "Debt") as! String
        sum = sum + Int(temp4)!
        let temp5 = defaults.object(forKey: "Misc") as! String
        sum = sum + Int(temp5)!
        
        defaults.set(sum.description, forKey: "SUM")

        //print(sum)
        var x = Double(temp1)! / Double(sum)
        var y = Double(round(1000*x)/1000) * 100
        
        lb1.text = y.description + "%"
        defaults.set(y.description, forKey: "Housing")
        
        x = Double(temp2)! / Double(sum)
        y = Double(round(1000*x)/1000) * 100
        
        lb2.text = y.description + "%"
        defaults.set(y.description, forKey: "Trans")
        
        x = Double(temp3)! / Double(sum)
        y = Double(round(1000*x)/1000) * 100
        
        lb3.text = y.description + "%"
        defaults.set(y.description, forKey: "Food")
        
        x = Double(temp4)! / Double(sum)
        y = Double(round(1000*x)/1000) * 100
        
        lb4.text = y.description + "%"
        defaults.set(y.description, forKey: "Debt")
        
        x = Double(temp5)! / Double(sum)
        y = Double(round(1000*x)/1000) * 100
        
        lb5.text = y.description + "%"
        defaults.set(y.description, forKey: "Misc")
        
        
    }
}
