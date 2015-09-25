//
//  AddCityViewController.swift
//  TableViewFromScratch
//
//  Created by Mark Lee Malmose on 24/09/15.
//  Copyright © 2015 Mark Lee Malmose. All rights reserved.
//

import UIKit

class AddCityViewController: UIViewController {

    @IBOutlet weak var cityTexyField: UITextField!
    @IBOutlet weak var saveBarButton: UIBarButtonItem!
    
    var city: String?
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        let emptyString = ""
        if sender as! UIBarButtonItem == self.saveBarButton {
            let name = cityTexyField.text ?? emptyString
            if name != emptyString{
                city = name
            }
        }
        
    }
    

}
