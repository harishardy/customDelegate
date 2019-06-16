//
//  secondViewController.swift
//  customDelegate
//
//  Created by harishardy on 16/06/19.
//  Copyright © 2019 iosdev. All rights reserved.
//

import UIKit


protocol secondViewControllerPassing {
    func passing(string : String)
   
}



class secondViewController: UIViewController {
    
    var delegateX : secondViewControllerPassing?
    
    
    @IBOutlet weak var textFieldX1: UITextField!
    
    
    
    
    @IBAction func buttonX2(_ sender: Any) {
       
        let txt = textFieldX1.text!
        
    self.navigationController?.popViewController(animated: true)
        
        //delegateX?.passing(string: "valuePassed")
        delegateX?.passing(string: txt)
 
    }
    
    
    

    override func viewDidLoad() {
        
        
        
        
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
