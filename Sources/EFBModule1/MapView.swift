//
//  MapView.swift
//  
//
//  Created by Guillaume Ramey on 10/01/2022.
//

import SwiftUI
import MapKit

public struct MapView: View {

  @State private var mapRegion = MKCoordinateRegion(
    center: CLLocationCoordinate2D(latitude: 45.7125788, longitude: 5.0712603),
    span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))

  public init() {}
  
  public var body: some View {
    ZStack {
      Map(coordinateRegion: $mapRegion)
        .edgesIgnoringSafeArea(.bottom)

      VStack {
        Spacer()

        Text("Global Button")
          .clipShape(Capsule())
          .background(Color.blue)
      }
    }
    .navigationTitle("Map")
    .navigationBarTitleDisplayMode(.inline)
  }
}

struct MapView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationView {
      MapView()
    }
  }
}
