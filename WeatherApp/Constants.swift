//
//  Constants.swift
//  WeatherApp
//
//  Created by Marko Poikkimäki on 2017-08-13.
//  Copyright © 2017 Marko Poikkimäki. All rights reserved.
//

import Foundation


let API_KEY = "a97bf8d818eacfc4abca512ced67b5ba"

/**
let BASE_URL = "http://api.openweathermap.org/data/2.5/forecast?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
*/

let CURRENT_WEATHER_URL = "http://api.openweathermap.org/data/2.5/forecast?APPID=\(API_KEY)&units=metric&id=2689287"

// APPID=a97bf8d818eacfc4abca512ced67b5ba&units=metric&id=2689287


typealias DownloadComplete = () -> ()
