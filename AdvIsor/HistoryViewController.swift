//
//  HistoryViewController.swift
//  AdvIsor
//
//  Created by Daniel Kweon on 2/17/18.
//  Copyright © 2018 Daniel Kweon. All rights reserved.
//

import UIKit
import Firebase

class HistoryViewController: UIViewController {

    
    @IBOutlet weak var btna: UIButton!
    //@IBOutlet weak var btnb: UIButton!
    
    
    @IBOutlet weak var temp: UILabel!
    
    
    @IBOutlet weak var lb1: UILabel!
    @IBOutlet weak var lb2: UILabel!
    @IBOutlet weak var lb3: UILabel!
    @IBOutlet weak var lb4: UILabel!
    @IBOutlet weak var lb5: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        btna.layer.cornerRadius = 12
        btna.clipsToBounds = true
        
        //btnb.layer.cornerRadius = 12
        //btnb.clipsToBounds = true
        
        
        var val1 = 64.65
        var val2 = 20.49
        var val3 = 6.76
        var val4 = 4.67
        var val5 = 3.41
        

        let str1 = defaults.object(forKey: "Housing") as! String
        let str2 = defaults.object(forKey: "Trans") as! String
        let str3 = defaults.object(forKey: "Food") as! String
        let str4 = defaults.object(forKey: "Debt") as! String
        let str5 = defaults.object(forKey: "Misc") as! String
        let sum = defaults.object(forKey: "SUM") as! String
        let heur1 = (val1 - Double(str1)!)/100.0 * Double(sum)!
        //print("heur" + heur1.description)
        lb1.textColor = UIColor.red
        //heur1 = Double(round(heur1))
        if(heur1 > 0) {
            lb1.textColor = UIColor.green
        }
        lb1.text = Int(heur1).description
        
        let heur2 = (val2 - Double(str2)!) / 100.0 * Double(sum)!
        lb2.textColor = UIColor.red
        if(heur2 > 0) {
            lb2.textColor = UIColor.green
        }
        lb2.text = Int(heur2).description
        
        let heur3 = (val3 - Double(str3)!)/100.0 * Double(sum)!
        lb3.textColor = UIColor.red
        if(heur3 > 0) {
            lb3.textColor = UIColor.green
        }
        lb3.text = Int(heur3).description
        
        let heur4 = (val4 - Double(str4)!) / 100.0 * Double(sum)!
        lb4.textColor = UIColor.red
        if(heur4 > 0) {
            lb4.textColor = UIColor.green
        }
        lb4.text = Int(heur4).description
        
        let heur5 = (val5 - Double(str5)!) / 100.0 * Double(sum)!
        lb5.textColor = UIColor.red
        if(heur5 > 0) {
            lb5.textColor = UIColor.green
        }
        lb5.text = Int(heur5).description
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

}
