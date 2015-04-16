//
//  ViewController.swift
//  CalorieCounter
//
//  Created by Justin Ward, Alex Barbosa and Khris Dickson on 2015-04-14.
//  Copyright (c) 2015 Justin Ward, Alex Barbosa and Khris Dickson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //-------UI LABELS-------
    @IBOutlet weak var dailyGoalLabel: UILabel!
    @IBOutlet weak var weightLossTotalLabel: UILabel!
    @IBOutlet weak var percentOfDailyLabel: UILabel!
    @IBOutlet weak var currentCalorieLabel: UILabel!
    
    //-------LOCAL VARIABLES FOR THE LABELS--------
    //var dailyGoal = String()
    //var weightLossTotal = String()
    //var percentOfDaily = String()
    //var currentCalorie = String()
    
    var dailyGoal:String = "0"
    var weightLossTotal:String = "0"
    var percentOfDaily:String = "0"
    var currentCalorie:String = "0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var props = saveProperties()
        
        //set the lables text when the view is loaded
        dailyGoalLabel.text = "Your Daily Goal is " + " " + dailyGoal + " " + "Calories"
        weightLossTotalLabel.text = "You Have Lost" + " " + weightLossTotal + "lbs" + " " + "So Far"
        percentOfDailyLabel.text = percentOfDaily + "%" + " " + "of Daily Calories Consumed"
        currentCalorieLabel.text = "You Consumed" + " " + currentCalorie + " " + "Calories Today"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

