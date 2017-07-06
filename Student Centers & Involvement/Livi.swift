//
//  Livi.swift
//  Student Centers & Involvement
//
//  Created by Zeki Oduro on 7/4/17.
//  Copyright © 2017 ZAO. All rights reserved.
//

import UIKit

class Livi: UIViewController {

    let liv = ["CLOSED","8:00am-7:00pm","8:00am-7:00pm","8:00am-7:00pm","8:00am-7:00pm","8:00am-5:00pm","CLOSED"]
    let cs =  ["CLOSED","8:00am-4:00pm","8:00am-4:00pm","8:00am-4:00pm","8:00am-4:00pm","8:00am-4:00pm","CLOSED"]
    let dd =  ["CLOSED","8:00am-2:30pm","8:00am-2:30pm","8:00am-2:30pm","8:00am-2:30pm","8:00am-2:30pm","CLOSED"]
    let rc =  ["CLOSED","CLOSED","CLOSED","CLOSED","CLOSED","CLOSED","CLOSED"]
    let rz = ["CLOSED","CLOSED","CLOSED","CLOSED","CLOSED","CLOSED","CLOSED"]
    let sb = ["CLOSED","CLOSED","CLOSED","CLOSED","CLOSED","CLOSED","CLOSED"]
    
    let date = Date()
    let cal = Calendar.current

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var lscLabel: UILabel!
    @IBOutlet weak var csLabel: UILabel!
    @IBOutlet weak var ddLabel: UILabel!
    @IBOutlet weak var rcLabel: UILabel!
    @IBOutlet weak var rzLabel: UILabel!
    @IBOutlet weak var sbLabel: UILabel!
    
    
    @IBAction func callInfo(_ sender: UIButton) {
        UIApplication.shared.open(NSURL(string: "tel://8484450405")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func callAdmin(_ sender: UIButton) {
        UIApplication.shared.open(NSURL(string: "tel://8484453561")! as URL, options: [:], completionHandler: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let weekday = cal.component(.weekday, from: date) - 1
        let format = DateFormatter()
        format.dateFormat = "MMMM dd, yyyy"
        let newDate = format.string(from: date)
        dateLabel.text = "Today is \(newDate)"
        lscLabel.text = liv[weekday]
        csLabel.text = cs[weekday]
        ddLabel.text = dd[weekday]
        rcLabel.text = rc[weekday]
        rzLabel.text = rz[weekday]
        sbLabel.text = sb[weekday]
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
