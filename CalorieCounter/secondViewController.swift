//
//  secondViewController.swift
//  CalorieCounter
//
//  Created by Justin, Alex and Khris on 2015-04-14.
//  Copyright (c) 2015 Justin. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {

    //--------INPUTS--------
    @IBOutlet weak var weightLossedTodayInput: UITextField!
    @IBOutlet weak var dailyGoalInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //sends the data to the first view controller
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //access the first view controller and its variables
        var firstView = segue.destinationViewController as ViewController
        
        //values being set in the other view controller
        firstView.dailyGoal = dailyGoalInput.text;
        firstView.weightLossTotal = weightLossedTodayInput.text;
    }
}
