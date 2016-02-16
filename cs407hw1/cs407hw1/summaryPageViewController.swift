//
//  summaryPageViewController.swift
//  cs407hw1
//
//  Created by wuyue on 2/16/16.
//  Copyright © 2016 wuyue. All rights reserved.
//

import UIKit

class summaryPageViewController: UIViewController {

    
    
    @IBOutlet weak var correctNum: UILabel!
    let Rock : String = ""
    
    var passingValue:Int!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        correctNum.text = String(passingValue)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
