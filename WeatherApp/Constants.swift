//
//  Constants.swift
//  WeatherApp
//
//  Created by Marko Poikkimäki on 2017-08-13.
//  Copyright © 2017 Marko Poikkimäki. All rights reserved.
//

import Foundation


let API_KEY = "a97bf8d818eacfc4abca512ced67b5ba"
let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "57.7069"
let LONGITUDE = "11.9689"

let CURRENT_WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather?APPID=\(API_KEY)&units=metric&lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)"

let FORECAST_WEATHER_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&appid=42a1771a0b787bf12e734ada0cfc80cb&units=metric&cnt=14"

// let LOCATION_WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather?APPID=\(API_KEY)&units=metric&id=2689287"



// APPID=a97bf8d818eacfc4abca512ced67b5ba&units=metric&id=2689287


typealias DownloadComplete = () -> ()
