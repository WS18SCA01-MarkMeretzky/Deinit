//
//  ViewController.swift
//  Deinit
//
//  Created by Mark Meretzky on 3/29/19.
//  Copyright © 2019 New York University School of Professional Studies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!;
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder);
        print("\(type(of: self)) init");
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func returnKeyPressed(_ sender: UITextField) {
        performSegue(withIdentifier: "UnwindSegue", sender: sender)
    }
    
    deinit {
        print("\(type(of: self)) deinit");
    }
    
}
