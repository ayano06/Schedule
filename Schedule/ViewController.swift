//
//  ViewController.swift
//  Schedule
//
//  Created by ayano on 2020/11/08.
//  Copyright © 2020 ayano. All rights reserved.
//

import UIKit
import FSCalendar

class ViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        cell?.textLabel?.text = "tesuto"
        
        return cell!
        
    }
    
    @IBOutlet var table: UITableView!
   
    
    
    @IBOutlet weak var calendar: FSCalendar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //calendar.appearance.todayColor = UIColor.red
        calendar.appearance.headerTitleColor = UIColor.red
        calendar.appearance.weekdayTextColor = UIColor.red

    }
    @IBAction func didTapButton (){
       self.performSegue(withIdentifier: "toSecond", sender: nil)
    
    
    }


}

