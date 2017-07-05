//
//  SAC.swift
//  Student Centers & Involvement
//
//  Created by Zeki Oduro on 7/4/17.
//  Copyright © 2017 ZAO. All rights reserved.
//

import UIKit

class SAC: UIViewController {

    
    let sac = ["CLOSED","8:00am-5:00pm","8:00am-5:00pm","8:00am-5:00pm","8:00am-5:00pm","8:00am-5:00pm","CLOSED"]
    let cs =  ["CLOSED","8:00am-4:00pm","8:00am-4:00pm","8:00am-4:00pm","8:00am-4:00pm","8:00am-4:00pm","CLOSED"]
    
    
    @IBOutlet weak var todayDate: UILabel!
    @IBOutlet weak var sacLabel: UILabel!
    @IBOutlet weak var csLabel: UILabel!
    
    
    let date = Date()
    let cal = Calendar.current
    
    
    
    
    
    @IBAction func callInfo(_ sender: UIButton) {
        UIApplication.shared.open(NSURL(string: "tel://8489321975")! as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func callAdmin(_ sender: UIButton) {
        UIApplication.shared.open(NSURL(string: "tel://8489328070")! as URL, options: [:], completionHandler: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let weekday = cal.component(.weekday, from: date) - 1
        let format = DateFormatter()
        format.dateFormat = "MMM dd,yyyy"
        let newDate = format.string(from: date)
        todayDate.text = "Today is \(newDate)"
        sacLabel.text = sac[weekday]
        csLabel.text = cs[weekday]
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
