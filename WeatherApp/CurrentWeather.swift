 //
//  CurrentWeather.swift
//  WeatherApp
//
//  Created by Marko Poikkimäki on 2017-08-13.
//  Copyright © 2017 Marko Poikkimäki. All rights reserved.
//

import UIKit
import Alamofire

class CurrentWeather {
    
    var _cityName:String!
    var _date:String!
    var _weatherType:String!
    var _currentTemp:Double!
    
    var cityName:String {
        if _cityName == nil {
            _cityName = ""
        }
        return _cityName
    }
    
    var date:String {
        if _date == nil {
            _date = ""
        }
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        
        let currentDate = dateFormatter.string(from: Date())
        self._date = "Today, \(currentDate)"
        return _date
    }
    
    var weatherType:String {
        if _weatherType == nil {
            _weatherType = ""
        }
        return _weatherType
    }
    
    var currentTemp:Double {
        if _currentTemp == nil {
            _currentTemp = 0.0
        }
        
        return _currentTemp
    }
    
    
    func downloadWeatherDetails(completed: @escaping DownloadComplete) {
        let currentWeatherURL = URL(string: CURRENT_WEATHER_URL)!
        
        Alamofire.request(currentWeatherURL).responseJSON { response in
            
            if let jsonResult = response.result.value as? Dictionary<String, AnyObject> {
                
                print("JSON SHIT: ", jsonResult)
                
                if let name = jsonResult["name"] as? String {
                    self._cityName = name
                    
                    print(self._cityName)
                }
                
                if let weather = jsonResult["weather"] as? [Dictionary<String, AnyObject>] {
                    
                    if let main = weather[0]["main"] as? String {
                        self._weatherType = main
                        
                        print(self._weatherType)
                    }
                    
                }
                
                if let main = jsonResult["main"] as? Dictionary<String, AnyObject> {
                    
                    if let temp = main["temp"] as? Double {
                        self._currentTemp = temp
                        
                        print(self._currentTemp)
                    }
                    
                }
                
            }
            completed()
        }
       
    }
    
    
    
}
