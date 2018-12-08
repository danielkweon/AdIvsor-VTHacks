//
//  ViewController.swift
//  AdvIsor
//
//  Created by Daniel Kweon on 2/17/18.
//  Copyright © 2018 Daniel Kweon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func signUpView(_ sender: Any) {
        self.performSegue(withIdentifier: "SignUpSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   

    
}

