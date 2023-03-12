//
//  ContentView.swift
//  Weather_app
//
//  Created by Yusril on 12/03/23.
//

import SwiftUI

struct ContentView: View {
    //MARK: Properties
    @StateObject var locationManager = LocationManager()
    
    //MARK: Body
    var body: some View {
        VStack {
            if let location = locationManager.location {
                Text("Your coordinate is
                     \(location.latitude),
                     \(location.longitude)")
            } else {
                if (locationManager.isLoading) {
                    ProgressView()
                } else {
                    WelcomeView()
                        .environmentObject(locationManager)
                }
            }
            
        }
        .background(Color(hue: 0.656, saturation: 0.787, brightness: 0.354))
        .preferredColorScheme(.dark)
    }
}

//MARK: Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
