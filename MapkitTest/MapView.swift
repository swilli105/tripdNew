//
//  MapView.swift
//  MapkitTest
//
//  Created by Shanice Williams on 5/1/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region = MKCoordinateRegion(
                center: CLLocationCoordinate2D(
                    latitude: 25.761681,
                    longitude: -80.191788),
                span: MKCoordinateSpan(
                    latitudeDelta: 0.04,
                    longitudeDelta: 0.04)
                
                )

    var body: some View {
       
        Map(coordinateRegion: $region)
            .edgesIgnoringSafeArea(.all)
    
 
    }
        
    
}

struct MapView_Previews: PreviewProvider {

static var previews: some View
{

MapView()    }
}
