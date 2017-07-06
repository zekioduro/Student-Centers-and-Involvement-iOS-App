//
//  CA.swift
//  Student Centers & Involvement
//
//  Created by Zeki Oduro on 7/4/17.
//  Copyright © 2017 ZAO. All rights reserved.
//

import UIKit

class CA: UIViewController {
    
    let ca = ["CLOSED","8:00am-7:00pm","8:00am-7:00pm","8:00am-7:00pm","8:00am-7:00pm","8:00am-5:00pm","CLOSED"]
    let cu = ["CLOSED","8:00am-3:00pm","8:00am-3:00pm","8:00am-3:00pm","8:00am-3:00pm","8:00am-3:00pm","CLOSED"]
    let ger = ["CLOSED","8:00am-3:00pm","8:00am-3:00pm","8:00am-3:00pm","8:00am-3:00pm","8:00am-3:00pm","CLOSED"]
    let kp = ["CLOSED","8:00am-3:00pm","8:00am-3:00pm","8:00am-3:00pm","8:00am-3:00pm","8:00am-3:00pm","CLOSED"]
    let sub = ["CLOSED","8:00am-4:00pm","8:00am-4:00pm","8:00am-4:00pm","8:00am-4:00pm","8:00am-4:00pm","CLOSED"]
    let wen = ["CLOSED","8:00am-3:00pm","8:00am-3:00pm","8:00am-3:00pm","8:00am-3:00pm","8:00am-3:00pm","CLOSED"]
    
    let date = Date()
    let cal = Calendar.current
    
    @IBOutlet weak var todayDate: UILabel!
    @IBOutlet weak var caLabel: UILabel!
    @IBOutlet weak var cuLabel: UILabel!
    @IBOutlet weak var gerLabel: UILabel!
    @IBOutlet weak var kpLabel: UILabel!
    @IBOutlet weak var subLabel: UILabel!
    @IBOutlet weak var wenLabel: UILabel!
    
    
    
    
    
    
    
    @IBAction func callInfo(_ sender: UIButton) {
        UIApplication.shared.open(NSURL(string: "tel://8489327724")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func callAdmin(_ sender: UIButton) {
        UIApplication.shared.open(NSURL(string: "tel://8489328070")! as URL, options: [:], completionHandler: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let weekday = cal.component(.weekday, from: date) - 1
        let format = DateFormatter()
        format.dateFormat = "MMMM dd, yyyy"
        let newDate = format.string(from: date)
        todayDate.text = "Today is \(newDate)"
        caLabel.text = ca[weekday]
        cuLabel.text = cu[weekday]
        gerLabel.text = ger[weekday]
        kpLabel.text = kp[weekday]
        subLabel.text = sub[weekday]
        wenLabel.text = wen[weekday]

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
