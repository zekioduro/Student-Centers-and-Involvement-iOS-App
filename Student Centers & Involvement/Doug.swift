//
//  Doug.swift
//  Student Centers & Involvement
//
//  Created by Zeki Oduro on 7/4/17.
//  Copyright © 2017 ZAO. All rights reserved.
//

import UIKit

class Doug: UIViewController {

    
   let dsc = ["CLOSED","8:00am-5:00pm","8:00am-5:00pm","8:00am-5:00pm","8:00am-5:00pm","8:00am-5:00pm","CLOSED"]
    let cl = ["CLOSED","CLOSED","CLOSED","CLOSED","CLOSED","CLOSED","CLOSED"]
    let dc = ["CLOSED","CLOSED","CLOSED","CLOSED","CLOSED","CLOSED","CLOSED"]
    let dd = ["CLOSED","8:00am-2:30pm","8:00am-2:30pm","8:00am-2:30pm","8:00am-2:30pm","8:00am-2:30pm","CLOSED"]
    let rpp = ["CLOSED","10:30am-2:30pm","10:30am-2:30pm","10:30am-2:30pm","10:30am-2:30pm","10:30am-2:30pm","CLOSED"]
    
    let date = Date()
    let cal = Calendar.current
    
    
    @IBOutlet weak var todayDate: UILabel!
    @IBOutlet weak var dscLabel: UILabel!
    @IBOutlet weak var clLabel: UILabel!
    @IBOutlet weak var dcLabel: UILabel!
    @IBOutlet weak var ddLabel: UILabel!
    @IBOutlet weak var rppLabel: UILabel!
    
    
    
    
    
    
    
    @IBAction func callInfo(_ sender: UIButton) {
        UIApplication.shared.open(NSURL(string: "tel://8489329372")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func callAdmin(_ sender: UIButton) {
        UIApplication.shared.open(NSURL(string: "tel://8489329374")! as URL, options: [:], completionHandler: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let weekday = cal.component(.weekday, from: date) - 1
        let format = DateFormatter()
        format.dateFormat = "MMMM dd, yyyy"
        let newDate = format.string(from: date)
        todayDate.text = "Today is \(newDate)"
        dscLabel.text = dsc[weekday]
        clLabel.text = cl[weekday]
        dcLabel.text = dc[weekday]
        ddLabel.text = dd[weekday]
        rppLabel.text = rpp[weekday]
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
