//
//  MapView.swift
//  FirstSwiftApp
//
//  Created by Arne Johannesen on 14/10/2022.
//

import SwiftUI
import MapKit

struct MapView: View {
    var corrdinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coordinate: corrdinate)
            }
    }
    
    private func setRegion (coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(corrdinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
