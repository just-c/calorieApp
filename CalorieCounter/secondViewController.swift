//
//  secondViewController.swift
//  CalorieCounter
//
//  Created by Justin Ward, Alex Barbosa and Khris Dickson on 2015-04-14.
//  Copyright (c) 2015 Justin Ward, Alex Barbosa, Khris Dickson. All rights reserved.
//

import UIKit

struct saveProperties {
    var dailyGoalSave = String()
    var weightLossTotalSave = String()
    var currentCalorieSave = String()
    var percentOfDailySave = String()
}
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
            firstView.dailyGoal = dailyGoalText.text;
            
            //sets the weight loss total
            var totalWeightLossed:Int = (firstView.weightLossTotal.toInt()! + weightLossedText.text.toInt()!)
            firstView.weightLossTotal = String(totalWeightLossed);
          
            //sets the number of calories you consumed
            firstView.currentCalorie = caloriesConsumedText.text
           
            //sets the percent label
            var percent:Float = ((caloriesConsumedText.text as NSString).floatValue / (dailyGoalText.text as NSString).floatValue) * 100
            firstView.percentOfDaily = NSString(format: "%.2f", percent)
            
            //saves the fields to be displayed when the app is opened again
            var defaults: NSUserDefaults = NSUserDefaults.standardUserDefaults();
            defaults.setObject(firstView.dailyGoal, forKey: "dailyGoal")
            defaults.setObject(firstView.weightLossTotal, forKey: "weightLossTotal")
            defaults.setObject(firstView.currentCalorie, forKey: "currentCalorie")
            defaults.setObject(firstView.percentOfDaily, forKey: "percentOfDaily")
            defaults.synchronize()
            
            //saves the values into the struct to be used in the other view controller for loading
            var props = saveProperties()
            props.dailyGoalSave = defaults.objectForKey("dailyGoal") as String;
            props.weightLossTotalSave = defaults.objectForKey("weightLossTotal") as String;
            props.currentCalorieSave = defaults.objectForKey("currentCalorie") as String;
            props.percentOfDailySave = defaults.objectForKey("percentOfDaily") as String;
            
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
