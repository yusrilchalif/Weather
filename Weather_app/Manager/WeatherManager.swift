//
//  WeatherManager.swift
//  Weather_app
//
//  Created by Yusril on 12/03/23.
//

import Foundation
import CoreLocation

class WeatherManager {
    let latitudeCoor: String = "-7.243482439683757"
    let longitudeCoor: String = "112.72787220462415"
    let APIKEYS: String = "4db7039315a3e5a7c02594f72431c681"
    
    
    func getCurrentLocation(latitude: CLLocationDegrees, longitude: CLLocationDegrees) async throws{
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?lat=\(latitudeCoor)&lon=\(longitudeCoor)&appid=\(APIKEYS)&units=metric") else { fatalError("Missing URL") }
        
        let urlRequest = URLRequest(url: url)
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else { fatalError("Error fatching data weather") }
    }
}


//lang long
//-7.243482439683757, 112.72787220462415
//API KEYS
//4db7039315a3e5a7c02594f72431c681
