//
//  ViewController.swift
//  CalorieCounter
//
//  Created by Justin, Alex and Khris on 2015-04-14.
//  Copyright (c) 2015 Justin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //-------UI LABELS-------
    @IBOutlet weak var dailyGoalLabel: UILabel!
    @IBOutlet weak var weightLossTotalLabel: UILabel!
    @IBOutlet weak var percentOfDailyLabel: UILabel!
    @IBOutlet weak var currentCalorieLabel: UILabel!
    
    //-------LOCAL VARIABLES FOR THE LABELS--------
    var dailyGoal = String()
    var weightLossTotal = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set the lables text when the view is loaded
        dailyGoalLabel.text = dailyGoal;
        weightLossTotalLabel.text = weightLossTotal;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

