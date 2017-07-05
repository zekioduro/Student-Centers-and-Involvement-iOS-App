//
//  Cook.swift
//  Student Centers & Involvement
//
//  Created by Zeki Oduro on 7/4/17.
//  Copyright © 2017 ZAO. All rights reserved.
//

import UIKit

class Cook: UIViewController {
    
    let csc = ["CLOSED","8:00am-5:00pm","8:00am-5:00pm","8:00am-5:00pm","8:00am-5:00pm","8:00am-5:00pm","CLOSED"]
    let cl = ["CLOSED","CLOSED","CLOSED","CLOSED","CLOSED","CLOSED","CLOSED"]
    let cc = ["CLOSED","CLOSED","CLOSED","CLOSED","CLOSED","CLOSED","CLOSED"]
    let dg = ["CLOSED","CLOSED","CLOSED","CLOSED","CLOSED","CLOSED","CLOSED"]

    let date = Date()
    let cal = Calendar.current
    
    @IBOutlet weak var todayDate: UILabel!
    @IBOutlet weak var cscLabel: UILabel!
    @IBOutlet weak var clLabel: UILabel!
    @IBOutlet weak var ccLabel: UILabel!
    @IBOutlet weak var dgLabel: UILabel!
    
    
    
    
    
    
    
    @IBAction func callInfo(_ sender: UIButton) {
        UIApplication.shared.open(NSURL(string: "tel://8489329215")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func callAdmin(_ sender: UIButton) {
        UIApplication.shared.open(NSURL(string: "tel://8489327617")! as URL, options: [:], completionHandler: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let weekday = cal.component(.weekday, from: date) - 1
        let format = DateFormatter()
        format.dateFormat = "MMM dd,yyyy"
        let newDate = format.string(from: date)
        todayDate.text = "Today is \(newDate)"
        cscLabel.text = csc[weekday]
        clLabel.text = cl[weekday]
        ccLabel.text = cc[weekday]
        dgLabel.text = dg[weekday]
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
