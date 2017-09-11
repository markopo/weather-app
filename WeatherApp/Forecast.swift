//
//  Forecast.swift
//  WeatherApp
//
//  Created by Marko Poikkimäki on 2017-08-20.
//  Copyright © 2017 Marko Poikkimäki. All rights reserved.
//

import UIKit 
import Alamofire

class Forecast {
    
    var _date:String!
    var _shortDate:String!
    var _weatherType:String!
    var _highTemp:String!
    var _lowTemp:String!
    
    
    var date: String {
        if _date == nil {
            _date = ""
        }
        
        return _date
    }
    
    var shortDate: String {
        if _shortDate == nil {
            _shortDate = ""
        }
        
        return _shortDate
    }
    
    var weatherType: String {
        
        if _weatherType == nil {
            _weatherType = ""
        }
        
        return _weatherType
    }
    
    var highTemp:String {
        if _highTemp == nil {
            _highTemp = ""
        }
        
        return _highTemp
    }
    
    var lowTemp: String {
        if _lowTemp == nil {
            _lowTemp = ""
        }
        return _lowTemp
    }
    
    init(weatherDict: Dictionary<String, AnyObject>) {
       
        // TEMP
        if let temp = weatherDict["temp"] as? Dictionary<String, AnyObject> {
            
            if let min = temp["min"] as? Double {
                
                if min > 0 {
                    _lowTemp = "+\(min)°C"
                }
                else {
                    _lowTemp = "-\(min)°C"
                }
            }
            
            if let max = temp["max"] as? Double {
                
                if max > 0 {
                    _highTemp = "+\(max)°C"

                }
                else {
                    _highTemp = "-\(max)°C"
                }
                
            }
        }
        
        // WEATHER
        if let weather = weatherDict["weather"] as? [Dictionary<String, AnyObject>] {
            
            if let main = weather[0]["main"] as? String {
                self._weatherType = main
            }
            
        }
        
        // DATE 
        if let date = weatherDict["dt"] as? Double {
            
            let unixConvertedDate = Date(timeIntervalSince1970: date)
            
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .short
            dateFormatter.timeStyle = .none
            
            let dateString = dateFormatter.string(from: unixConvertedDate)
            self._shortDate = dateString
  
            let day = unixConvertedDate.dayOfTheWeek()
            self._date = "\(day)"
            
        }
        
        
        
        
    }
    
}

extension Date {

    func dayOfTheWeek() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: self)
    }

}
