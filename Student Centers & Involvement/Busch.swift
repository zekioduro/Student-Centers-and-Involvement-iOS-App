//
//  Busch.swift
//  Student Centers & Involvement
//
//  Created by Zeki Oduro on 7/4/17.
//  Copyright © 2017 ZAO. All rights reserved.
//

import UIKit

class Busch: UIViewController {
    
    
    @IBOutlet weak var todayDate: UILabel!
    @IBOutlet weak var bscLabel: UILabel!
    @IBOutlet weak var csLabel: UILabel!
    @IBOutlet weak var gerLabel: UILabel!
    @IBOutlet weak var moeLabel: UILabel!
    @IBOutlet weak var siLabel: UILabel!
    
    
    
    
    
    
    let bsc = ["CLOSED","8:00am-7:00pm","8:00am-7:00pm","8:00am-7:00pm","8:00am-7:00pm","8:00am-5:00pm","CLOSED"]
    let cs = ["CLOSED","8:00am-6:00pm","8:00am-6:00pm","8:00am-6:00pm","8:00am-6:00pm","8:00am-4:00pm","CLOSED"]
    let ger = ["CLOSED","8:00am-3:00pm","8:00am-6:30pm","8:00am-3:00pm","8:00am-3:00pm","8:00am-3:00pm","CLOSED"]
    let moe = ["CLOSED","8:00am-6:30pm","8:00am-3:00pm","8:00am-3:00pm","8:00am-3:00pm","8:00am-3:00pm","CLOSED"]
    let si = ["CLOSED","8:00am-3:00pm","8:00am-3:00pm","8:00am-6:30pm","8:00am-3:00pm","8:00am-3:00pm","CLOSED"]
    
    let date = Date()
    let cal = Calendar.current
    
    @IBAction func callInfo(_ sender: UIButton) {
        UIApplication.shared.open(NSURL(string: "tel://8484454724")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func callAdmin(_ sender: UIButton) {
        UIApplication.shared.open(NSURL(string: "tel://8484453962")! as URL, options: [:], completionHandler: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let weekday = cal.component(.weekday, from: date) - 1
        let format = DateFormatter()
        format.dateFormat = "MMMM dd, yyyy"
        let newDate = format.string(from: date)
        todayDate.text = "Today is \(newDate)"
        bscLabel.text = bsc[weekday]
        csLabel.text = cs[weekday]
        gerLabel.text = ger[weekday]
        moeLabel.text = moe[weekday]
        siLabel.text = si[weekday]
        
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
