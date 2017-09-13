//
//  Location.swift
//  WeatherApp
//
//  Created by Marko Poikkimäki on 2017-09-12.
//  Copyright © 2017 Marko Poikkimäki. All rights reserved.
//

import CoreLocation


class Location {
    
    static var sharedInstance = Location()
    
    private init() { }
    
    var latitude:Double!
    var longitude:Double!
    
    
    
}
