//
//  utils.swift
//  todotutorial
//
//  Created by Alen John on 2024-09-21.
//

import Foundation

func getCurrentTimeAndDay()->(time: String, day: String, amPm: String, hour: String) {
    let now = Date()
    let timeFormatter = DateFormatter()
    timeFormatter.timeStyle = .medium
    timeFormatter.dateStyle = .none
    
    let dayFormatter = DateFormatter()
    dayFormatter.dateFormat = "EEEE"
    let hourFormatter = DateFormatter()
    hourFormatter.dateFormat = "HH" // 24-hour format
    let hour = hourFormatter.string(from: now)
    let currentTime = timeFormatter.string(from: now)
    let currentDay = dayFormatter.string(from: now)
    let hours = String(currentTime.prefix(2))
    let amPm = String(currentTime.suffix(2))
    // seperate the am and hours
    print(hours, amPm)
    return (currentTime, currentDay, amPm, hour)
}

func extractfromSigleResponseAPI(response : String) -> (WeatherDTO?) {
    var currentWeather : WeatherDTO = WeatherDTO.init(visibility: 0, lon: 0, lat: 0, description: "", temp: 0, feels_like: 0, temp_min: 0, temp_max: 0, pressure: 0, humidity: 0, dayType: "", cityName: "")
    
    if let jsonData = response.data(using: .utf8) {
        do {
            let currentWeatherResponse: WeatherResponse = try JSONDecoder().decode(WeatherResponse.self, from: jsonData)
            // adding the data DTO
            currentWeather.lat = currentWeatherResponse.coord.lat
            currentWeather.lon = currentWeatherResponse.coord.lon
            currentWeather.dayType = currentWeatherResponse.weather[0].main
            currentWeather.description = currentWeatherResponse.weather[0].description
            currentWeather.temp = currentWeatherResponse.main.temp
            currentWeather.feels_like = currentWeatherResponse.main.feels_like
            currentWeather.temp_max = currentWeatherResponse.main.temp_max
            currentWeather.temp_min = currentWeatherResponse.main.temp_min
            currentWeather.visibility = currentWeatherResponse.visibility
            currentWeather.humidity = currentWeatherResponse.main.humidity
            currentWeather.pressure = currentWeatherResponse.main.pressure
            currentWeather.cityName = currentWeatherResponse.name
            print(currentWeather)
        }
        catch {
                print("Failed to decode JSON: \(error.localizedDescription)")
            }
    }
        return currentWeather
    }

//util function to round of a double
// util function to convert kelvin to celcius
