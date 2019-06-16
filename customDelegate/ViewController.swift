//
//  ViewController.swift
//  customDelegate
//
//  Created by harishardy on 16/06/19.
//  Copyright © 2019 iosdev. All rights reserved.
//

import UIKit

class ViewController: UIViewController, secondViewControllerPassing {
    func passing(string: String) {
        print("notified")
        //print(string)
        labelX1.text = String(string)
    }
    
    
    @IBAction func buttonX1(_ sender: Any) {
        
        performSegue(withIdentifier: "goToSecondVC", sender: self)
    }
    
    @IBOutlet weak var labelX1: UILabel!
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? secondViewController
        {
            destination.delegateX = self
        }
    }
    
    
    
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

