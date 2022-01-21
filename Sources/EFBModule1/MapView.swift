//
//  MapView.swift
//  
//
//  Created by Guillaume Ramey on 10/01/2022.
//

import EFBToolKit
import MapKit
import SwiftUI

public struct MapView: View {

  @State private var mapRegion = MKCoordinateRegion(
    center: CLLocationCoordinate2D(latitude: 45.7125788, longitude: 5.0712603),
    span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))

  public init() {}
  
  public var body: some View {
    ZStack {
      Map(coordinateRegion: $mapRegion)
        .edgesIgnoringSafeArea(.top)
        .overlay(overlayView)

      VStack(spacing: 0) {
        HStack(spacing: 30) {
          Spacer ()

          Image(systemName: "map")
          Image(systemName: "square.3.layers.3d.down.backward")
          Image(systemName: "cloud.sun.rain")
          Image(systemName: "bookmark")
          Image(systemName: "switch.2")

          Spacer ()
        }
        .padding()
        .font(.title2)
        .foregroundColor(Color.red)
        .frame(height: 60)
        .background(Color.systemBackground.opacity(0.70))

        Spacer()
      }
    }
  }

  private var overlayView: some View {
    VStack {
      Spacer()

      ScrollView(.horizontal, showsIndicators: false) {
        HStack(spacing: 0) {
          overlayButton1
          overlayButton2
          overlayButton3
          overlayButton4
          overlayButton5
          overlayButton6
          overlayButton7
          overlayButton1
          overlayButton2
          overlayButton3
        }
        .frame(height: 120)
        .background(Color.systemBackground.opacity(0.70))
      }
    }
  }

  private var buttonDivider: some View {
    Divider()
      .background(Color.label)
  }

  private var overlayButton1: some View {
    HStack {
      VStack(spacing: 10) {
        Text("GPS G.S.")
          .foregroundColor(Color.label.opacity(0.70))
          .font(.title2)

        Text("126Kt")
          .foregroundColor(Color.label)
          .font(.largeTitle)
          .fontWeight(.semibold)
      }
      .padding(.horizontal, 30)

      buttonDivider
    }
  }

  private var overlayButton2: some View {
    HStack {
      VStack(spacing: 10) {
        Text("ACTUAL TRACK")
          .foregroundColor(Color.label.opacity(0.70))
          .font(.title2)
        Text("109°")
          .foregroundColor(Color.label)
          .font(.largeTitle)
          .fontWeight(.semibold)
      }
      .padding(.horizontal, 20)

      buttonDivider
    }
  }

  private var overlayButton3: some View {
    HStack {
      HStack(spacing: 10) {
        VStack(spacing: 5) {
          Text("BARO MSL")
            .foregroundColor(Color.label.opacity(0.70))
            .font(.title2)
          Text("884'")
            .foregroundColor(Color.label)
            .font(.largeTitle)
            .fontWeight(.semibold)
          Text("0'")
            .foregroundColor(Color.label)
            .font(.title2)
            .fontWeight(.semibold)
        }

        VStack(spacing: 10) {
          Image(systemName: "minus.square")
            .font(.title)
            .foregroundColor(Color.label)

          Image(systemName: "plus.square")
            .font(.title)
            .foregroundColor(Color.label)
        }
      }
      .padding(20)

      buttonDivider
    }
  }

  private var overlayButton4: some View {
    HStack {
      HStack(spacing: 10) {
        VStack(spacing: 5) {
          Text("GPS MSL")
            .foregroundColor(Color.label.opacity(0.70))
            .font(.title2)
          Text("10,500'")
            .foregroundColor(Color.label)
            .font(.largeTitle)
            .fontWeight(.semibold)
        }

        Image(systemName: "plus.square")
          .font(.title)
          .foregroundColor(Color.label)
      }
      .padding(20)

      buttonDivider
    }
  }

  private var overlayButton5: some View {
    HStack {
      VStack(spacing: 5) {
        Text("AGL")
          .foregroundColor(Color.label.opacity(0.70))
          .font(.title2)

        HStack(spacing: 10) {
          Text("GPS")
            .foregroundColor(Color.label.opacity(0.70))
            .font(.title2)

          Spacer()

          Text("10,500'")
            .foregroundColor(Color.label)
            .font(.title)
            .fontWeight(.semibold)
        }

        HStack(spacing: 10) {
          Text("BARO")
            .foregroundColor(Color.label.opacity(0.70))
            .font(.title2)

          Spacer()

          Text("884'")
            .foregroundColor(Color.label)
            .font(.title)
            .fontWeight(.semibold)
        }
      }
      .padding(20)

      buttonDivider
    }
  }

  private var overlayButton6: some View {
    HStack {
      VStack(spacing: 5) {
        Text("NEXT WPT")
          .foregroundColor(Color.label.opacity(0.70))
          .font(.title2)

        HStack(spacing: 10) {
          Text("TIME")
            .foregroundColor(Color.label.opacity(0.70))
            .font(.title2)

          Spacer()

          Text("5m")
            .foregroundColor(Color.label)
            .font(.title)
            .fontWeight(.semibold)
        }

        HStack(spacing: 10) {
          Text("DIST")
            .foregroundColor(Color.label.opacity(0.70))
            .font(.title2)

          Spacer()

          Text("11NM")
            .foregroundColor(Color.label)
            .font(.title)
            .fontWeight(.semibold)
        }
      }
      .padding(20)

      buttonDivider
    }
  }

  private var overlayButton7: some View {
    HStack {
      VStack(spacing: 5) {
        Text("DESTINATION")
          .foregroundColor(Color.label.opacity(0.70))
          .font(.title2)

        HStack(spacing: 10) {
          Text("TIME")
            .foregroundColor(Color.label.opacity(0.70))
            .font(.title2)

          Spacer()

          Text("5m")
            .foregroundColor(Color.label)
            .font(.title)
            .fontWeight(.semibold)
        }

        HStack(spacing: 10) {
          Text("DIST")
            .foregroundColor(Color.label.opacity(0.70))
            .font(.title2)

          Spacer()

          Text("11NM")
            .foregroundColor(Color.label)
            .font(.title)
            .fontWeight(.semibold)
        }
      }
      .padding(20)

      buttonDivider
    }
  }
}

struct MapView_Previews: PreviewProvider {
  static var previews: some View {
    MapView()
      .preferredColorScheme(.light)
    MapView()
      .preferredColorScheme(.dark)
  }
}
