//
//  SigleWeatherApiDTO.swift
//  todotutorial
//
//  Created by Alen John on 2024-09-22.
//

import Foundation

struct WeatherDTO {
//    let coord: Coord
//    let weather: [Weather]
//    let base: String
//    let main: Main
    var visibility: Int
//    let dt: Int
//    let sys: Sys
//    let timezone: Int
//    let id: Int
//    let name: String
//    let cod: Int
    var lon: Double
    var lat: Double
    var description: String
//    let icon: String
    var temp: Double
    var feels_like: Double
    var temp_min: Double
    var temp_max: Double
    var pressure: Int
    var humidity: Int
    var dayType: String
    var cityName: String
//    let sea_level: Int?
//    let grnd_level: Int?
}
