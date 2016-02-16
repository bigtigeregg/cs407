//
//  imageQuestionViewController.swift
//  cs407hw1
//
//  Created by wuyue on 2/16/16.
//  Copyright © 2016 wuyue. All rights reserved.
//

import UIKit

class imageQuestionViewController: UIViewController {

    @IBOutlet weak var teamEditText: UITextField!
    
    var correctCount = 0
    @IBAction func imageQuestionSubmit(sender: AnyObject) {
        
        if (teamEditText.text!.caseInsensitiveCompare("liverpool") == NSComparisonResult.OrderedSame){
            correctCount++
        }
        
        self.performSegueWithIdentifier("totextQuestionViewController", sender: sender)
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
        if (segue.identifier == "totextQuestionViewController") {
        let secondVC: textQuestionViewController = segue.destinationViewController as! textQuestionViewController
            secondVC.correctAnwser = correctCount
        }
    }
}
