//
//  map.swift
//  where-are-you
//
//  Created on 5/14/25.
//

import Foundation
import SwiftUI


struct MapView: View {
    @ObservedObject var locationModel = LocationViewModel()
    
    var body: some View{
        if let location = locationModel.userLocation {
            Text("\(location.latitude)")
            Text("\(location.longitude)")
        }
        else {
            Text("location not available")
        }
    }
}
