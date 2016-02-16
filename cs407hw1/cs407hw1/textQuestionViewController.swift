//
//  textQuestionViewController.swift
//  cs407hw1
//
//  Created by wuyue on 2/16/16.
//  Copyright © 2016 wuyue. All rights reserved.
//

import UIKit

class textQuestionViewController: UIViewController {
    
    var correctAnwser:Int!

    
    @IBOutlet weak var textQuestionEditText: UITextField!
    
    @IBAction func textQuestionSubmit(sender: AnyObject) {
        
        if(textQuestionEditText.text == "10"){
            correctAnwser = correctAnwser + 1
        }
        self.performSegueWithIdentifier("tosummaryPageViewController", sender: sender)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "tosummaryPageViewController") {
            let vc:summaryPageViewController = segue.destinationViewController as! summaryPageViewController
            vc.passingValue = correctAnwser
        }
    }
}
