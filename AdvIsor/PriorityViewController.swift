//
//  PriorityViewController.swift
//  AdvIsor
//
//  Created by Daniel Kweon on 2/18/18.
//  Copyright © 2018 Daniel Kweon. All rights reserved.
//

import UIKit

class PriorityViewController: UIViewController {

    @IBOutlet weak var btn1: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        btn1.layer.cornerRadius = 12
        btn1.clipsToBounds = true
        // Do any additional setup after loading the view.
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
    
    @IBOutlet weak var l1: UILabel!
    @IBOutlet weak var slider1: UISlider!
    @IBAction func s1(_ sender: Any) {
        l1.text = String(Int(slider1.value))
    }
    
    @IBOutlet weak var l2: UILabel!
    @IBOutlet weak var slider2: UISlider!
    @IBAction func s2(_ sender: Any) {
        l2.text = String(Int(slider2.value))
    }
    
    @IBOutlet weak var l3: UILabel!
    @IBOutlet weak var slider3: UISlider!
    @IBAction func s3(_ sender: Any) {
       l3.text = String(Int(slider3.value))
    }
    
    
    @IBOutlet weak var l4: UILabel!
    @IBOutlet weak var slider4: UISlider!
    @IBAction func s4(_ sender: Any) {
        l4.text = String(Int(slider4.value))
    }
    
    
    @IBOutlet weak var l5: UILabel!
    @IBOutlet weak var slider5: UISlider!
    @IBAction func s5(_ sender: Any) {
        l5.text = String(Int(slider5.value))
    }
    
    @IBAction func update(_ sender: Any) {
        let defaults = UserDefaults.standard
        let sum = Int(slider1.value) + Int(slider2.value) + Int(slider3.value) + Int(slider4.value) + Int(slider5.value)
        let str1 = defaults.object(forKey: "Housing") as! String
        //print(sum)
        let heur = Double(Int(slider1.value)) / Double(sum) * 5.0
        //print(heur)
        let temp = Double(str1)! / (0.5 * (heur - 1.0) + 1)
        print(temp)
        defaults.set(temp.description, forKey: "Housing")
        
        let str2 = defaults.object(forKey: "Trans") as! String
        let heur2 = Double(Int(slider2.value)) / Double(sum) * 5.0
        let temp2 = Double(str2)! / (0.5 * (heur2 - 1.0) + 1)
        defaults.set(temp2.description, forKey: "Trans")
        
        let str3 = defaults.object(forKey: "Food") as! String
        let heur3 = Double(Int(slider3.value)) / Double(sum) * 5.0
        let temp3 = Double(str3)! / (0.5 * (heur3 - 1.0) + 1)
        defaults.set(temp3.description, forKey: "Food")
        
        let str4 = defaults.object(forKey: "Debt") as! String
        let heur4 = Double(Int(slider4.value)) / Double(sum) * 5.0
        let temp4 = Double(str4)! / (0.5 * (heur4 - 1.0) + 1)
        defaults.set(temp4.description, forKey: "Debt")
        
        let str5 = defaults.object(forKey: "Misc") as! String
        let heur5 = Double(Int(slider5.value)) / Double(sum) * 5.0
        let temp5 = Double(str5)! / (0.5 * (heur5 - 1.0) + 1)
        defaults.set(temp5.description, forKey: "Misc")
    }
    
}
