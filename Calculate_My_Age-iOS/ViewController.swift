//
//  ViewController.swift
//  Calculate_My_Age-iOS
//
//  Created by Med Salmen Saadi on 6/3/18.
//  Copyright © 2018 Med Salmen Saadi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dp_BirthDate: UIDatePicker!
    @IBOutlet weak var la_DisplayAge: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func bu_CalcAge(_ sender: Any) {
        let CurrentDate = Date()
        let UserDOB=dp_BirthDate.date
        let calender = Calendar.current
        let component=calender.dateComponents( [Calendar.Component.day], from:UserDOB, to:CurrentDate)
        let Years:Int=Int(component.day!/356)
        let Months:Int=(component.day!-(Years*356))/30
        let Days:Int=component.day!-((Months*30) + (Years*356))
        la_DisplayAge.text="Your age is \(Years) Years, and \(Months)Months, and \(Days)Days"
    }
    
}

