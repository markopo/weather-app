//
//  WaetherVC.swift
//  WeatherApp
//
//  Created by Marko Poikkimäki on 2017-08-06.
//  Copyright © 2017 Marko Poikkimäki. All rights reserved.
//

import UIKit

class WeatherVC: UIViewController {

    // left side - top
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var currentTempLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    
    // right side - top
    @IBOutlet weak var currentWeatherImage: UIImageView!
    @IBOutlet weak var currentWeatherLabel: UILabel!
    
    // tableview - bottom
    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

