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
    @IBOutlet weak var dailyGoalText: UITextField!
    @IBOutlet weak var weightLossedText: UITextField!
    @IBOutlet weak var caloriesConsumedText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //sends the data to the first view controller
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "addItem")
        {
            //access the first view controller and its variables
            var firstView = segue.destinationViewController as ViewController
        
            //values being set in the other view controller
            firstView.dailyGoal = dailyGoalText.text;
            firstView.weightLossTotal = weightLossedText.text;
            firstView.currentCalorie = caloriesConsumedText.text
            var percent:Int = caloriesConsumedText.text.toInt()! / dailyGoalText.text.toInt()!
            firstView.percentOfDaily = String(percent)
        }
        if(segue.identifier == "view")
        {
            var view = segue.destinationViewController as ViewController
        }
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool{
        textField.resignFirstResponder();
        return true
    }
}
