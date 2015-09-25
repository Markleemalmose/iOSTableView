//
//  CityDetailViewController.swift
//  TableViewFromScratch
//
//  Created by Mark Lee Malmose on 24/09/15.
//  Copyright © 2015 Mark Lee Malmose. All rights reserved.
//

import UIKit

class CityDetailViewController: UIViewController {

    @IBOutlet weak var cityLabel: UILabel!
    
    var city: String? {
        didSet{
            configureView()
        }
    }
    
    func configureView(){
        if let detail = self.city {
            if let label = self.cityLabel{
                label.text = detail
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureView()
        // Do any additional setup after loading the view.
        
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
