//
//  secondViewController.swift
//  CalorieCounter
//
//  Created by Justin on 2015-04-14.
//  Copyright (c) 2015 Justin. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {

    //--------INPUTS--------
    @IBOutlet weak var weightLossedTodayInput: UITextField!
    @IBOutlet weak var dailyGoalInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var firstView = segue.destinationViewController as ViewController
        firstView.dailyGoal = dailyGoalInput.text;
        firstView.weightLossTotal = weightLossedTodayInput.text;
    }
}
