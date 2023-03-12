//
//  WelcomeView.swift
//  Weather_app
//
//  Created by Yusril on 12/03/23.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    //MARK: Properties
    @EnvironmentObject var locationManager: LocationManager
    
    //MARK: Body
    var body: some View {
        VStack {
            VStack (spacing: 20){
                Text("Welcome to Weather App")
                    .bold()
                    .font(.title)
                
                Text("Please share your current location to get the weather in your area")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

//MARK: Preview
struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
