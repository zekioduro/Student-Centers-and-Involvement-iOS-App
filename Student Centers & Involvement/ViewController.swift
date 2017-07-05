//
//  ViewController.swift
//  Student Centers & Involvement
//
//  Created by Zeki Oduro on 6/29/17.
//  Copyright © 2017 ZAO. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    
    
    let stucen = ["Busch Student Center", "College Avenue Student Center", "Cook Student Center", "Douglass Student Center", "Livingston Student Center", "Student Activities Center"]
    let meet = ["Meetings and Events Office"]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
           return stucen.count
        } else {
            return meet.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        if indexPath.section == 0 {
            let center = stucen[indexPath.row]
            cell.textLabel?.text = center
            cell.accessoryType = .disclosureIndicator
            return cell
        } else {
            let meeting = meet[indexPath.row]
            cell.textLabel?.text = meeting
            cell.accessoryType = .disclosureIndicator
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "View Student Centers"
        } else {
            return "Reserve Space"
        }
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 2.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0{
            if indexPath.row == 0{
                performSegue(withIdentifier: "busch", sender: self)
            }  else if indexPath.row == 1{
                performSegue(withIdentifier: "ca", sender: self)
            } else if indexPath.row == 2{
                performSegue(withIdentifier: "cook", sender: self)
            } else if indexPath.row == 3{
                performSegue(withIdentifier: "doug", sender: self)
            } else if indexPath.row == 4{
                performSegue(withIdentifier: "livi", sender: self)
            } else if indexPath.row == 5{
                performSegue(withIdentifier: "sac", sender: self)
            }
        } else {
             performSegue(withIdentifier: "meeting", sender: self)
        }
        
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

