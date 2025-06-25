//
//  File.swift
//  where-are-you
//
//  Created by Justin Goshorn on 5/14/25.
//

import Foundation
import UIKit
import CoreLocation

class LocationViewModel: NSObject, ObservableObject, CLLocationManagerDelegate{
    @Published var userLocation: CLLocationCoordinate2D?
    private var locationManager = CLLocationManager()
    
    override init() {
        super.init()
        self.locationManager.delegate = self
        // Request auth for accessing location from user
        self.locationManager.requestWhenInUseAuthorization()
        // Try to update location if authorized
        self.locationManager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
          guard let location = locations.last else { return }
          // Update published variable with user location coordinates
          userLocation = location.coordinate
      }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
            if status == .authorizedWhenInUse || status == .authorizedAlways {
                // If authorization status has changed to authorized
                // start updating location
                locationManager.startUpdatingLocation()
            }
        }
}



