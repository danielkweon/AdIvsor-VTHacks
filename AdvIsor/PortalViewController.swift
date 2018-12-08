//
//  PortalViewController.swift
//  AdvIsor
//
//  Created by Daniel Kweon on 2/17/18.
//  Copyright © 2018 Daniel Kweon. All rights reserved.
//

import UIKit

class PortalViewController: UIViewController {

    @IBOutlet weak var hist: UIButton!
    @IBOutlet weak var info: UIButton!
    
    @IBOutlet weak var profileImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        info.layer.cornerRadius = 12
        info.clipsToBounds = true
        
        hist.layer.cornerRadius = 12
        hist.clipsToBounds = true
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

