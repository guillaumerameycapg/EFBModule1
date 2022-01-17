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
      .foregroundColor(Color.white.opacity(0.80))
      .frame(height: 60)
      .background(Color.black)

      Map(coordinateRegion: $mapRegion)
        .overlay(overlayView)
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
      }
    }
  }

  private var overlayButton1: some View {
    VStack(spacing: 10) {
      Text("GPS G.S.")
        .foregroundColor(Color.white.opacity(0.70))
        .font(.title2)
      Text("126Kt")
        .foregroundColor(Color.white)
        .font(.largeTitle)
        .fontWeight(.semibold)
    }
    .padding(.horizontal, 30)
    .frame(height: 120)
    .contentShape(Rectangle())
    .background(
      LinearGradient(
        colors: [Color(#colorLiteral(red: 0.370555222, green: 0.3705646992, blue: 0.3705595732, alpha: 1)), Color(#colorLiteral(red: 0.1298420429, green: 0.1298461258, blue: 0.1298439503, alpha: 1))],
        startPoint: .top,
        endPoint: .bottom)
        .opacity(0.70)
    )
    .border(Color.gray, width: 1)
  }

  private var overlayButton2: some View {
    VStack(spacing: 10) {
      Text("ACTUAL TRACK")
        .foregroundColor(Color.white.opacity(0.70))
        .font(.title2)
      Text("109°")
        .foregroundColor(Color.white)
        .font(.largeTitle)
        .fontWeight(.semibold)
    }
    .padding(.horizontal, 20)
    .frame(height: 120)
    .contentShape(Rectangle())
    .background(
      LinearGradient(
        colors: [Color(#colorLiteral(red: 0.370555222, green: 0.3705646992, blue: 0.3705595732, alpha: 1)), Color(#colorLiteral(red: 0.1298420429, green: 0.1298461258, blue: 0.1298439503, alpha: 1))],
        startPoint: .top,
        endPoint: .bottom)
        .opacity(0.70)
    )
    .border(Color.gray, width: 1)
  }

  private var overlayButton3: some View {
    HStack(spacing: 10) {
      VStack(spacing: 5) {
        Text("BARO MSL")
          .foregroundColor(Color.white.opacity(0.70))
          .font(.title2)
        Text("884'")
          .foregroundColor(Color.white)
          .font(.largeTitle)
          .fontWeight(.semibold)
        Text("0'")
          .foregroundColor(Color.white)
          .font(.title2)
          .fontWeight(.semibold)
      }

      VStack(spacing: 10) {
        Image(systemName: "minus.square")
          .font(.title)
          .foregroundColor(Color.white)

        Image(systemName: "plus.square")
          .font(.title)
          .foregroundColor(Color.white)
      }
    }
    .padding(20)
    .frame(height: 120)
    .contentShape(Rectangle())
    .background(
      LinearGradient(
        colors: [Color(#colorLiteral(red: 0.370555222, green: 0.3705646992, blue: 0.3705595732, alpha: 1)), Color(#colorLiteral(red: 0.1298420429, green: 0.1298461258, blue: 0.1298439503, alpha: 1))],
        startPoint: .top,
        endPoint: .bottom)
        .opacity(0.70)
    )
    .border(Color.gray, width: 1)
  }

  private var overlayButton4: some View {
    HStack(spacing: 10) {
      VStack(spacing: 5) {
        Text("GPS MSL")
          .foregroundColor(Color.white.opacity(0.70))
          .font(.title2)
        Text("10,500'")
          .foregroundColor(Color.white)
          .font(.largeTitle)
          .fontWeight(.semibold)
      }

      Image(systemName: "plus.square")
        .font(.title)
        .foregroundColor(Color.white)
    }
    .padding(20)
    .frame(height: 120)
    .contentShape(Rectangle())
    .background(
      LinearGradient(
        colors: [Color(#colorLiteral(red: 0.370555222, green: 0.3705646992, blue: 0.3705595732, alpha: 1)), Color(#colorLiteral(red: 0.1298420429, green: 0.1298461258, blue: 0.1298439503, alpha: 1))],
        startPoint: .top,
        endPoint: .bottom)
        .opacity(0.70)
    )
    .border(Color.gray, width: 1)
  }

  private var overlayButton5: some View {
    VStack(spacing: 5) {
      Text("AGL")
        .foregroundColor(Color.white.opacity(0.70))
        .font(.title2)

      HStack(spacing: 10) {
        Text("GPS")
          .foregroundColor(Color.white.opacity(0.70))
          .font(.title2)

        Spacer()

        Text("10,500'")
          .foregroundColor(Color.white)
          .font(.title)
          .fontWeight(.semibold)
      }

      HStack(spacing: 10) {
        Text("BARO")
          .foregroundColor(Color.white.opacity(0.70))
          .font(.title2)

        Spacer()

        Text("884'")
          .foregroundColor(Color.white)
          .font(.title)
          .fontWeight(.semibold)
      }
    }
    .padding(20)
    .frame(height: 120)
    .contentShape(Rectangle())
    .background(
      LinearGradient(
        colors: [Color(#colorLiteral(red: 0.370555222, green: 0.3705646992, blue: 0.3705595732, alpha: 1)), Color(#colorLiteral(red: 0.1298420429, green: 0.1298461258, blue: 0.1298439503, alpha: 1))],
        startPoint: .top,
        endPoint: .bottom)
        .opacity(0.70)
    )
    .border(Color.gray, width: 1)
  }

  private var overlayButton6: some View {
    VStack(spacing: 5) {
      Text("NEXT WPT")
        .foregroundColor(Color.white.opacity(0.70))
        .font(.title2)

      HStack(spacing: 10) {
        Text("TIME")
          .foregroundColor(Color.white.opacity(0.70))
          .font(.title2)

        Spacer()

        Text("5m")
          .foregroundColor(Color.white)
          .font(.title)
          .fontWeight(.semibold)
      }

      HStack(spacing: 10) {
        Text("DIST")
          .foregroundColor(Color.white.opacity(0.70))
          .font(.title2)

        Spacer()

        Text("11NM")
          .foregroundColor(Color.white)
          .font(.title)
          .fontWeight(.semibold)
      }
    }
    .padding(20)
    .frame(height: 120)
    .contentShape(Rectangle())
    .background(
      LinearGradient(
        colors: [Color(#colorLiteral(red: 0.370555222, green: 0.3705646992, blue: 0.3705595732, alpha: 1)), Color(#colorLiteral(red: 0.1298420429, green: 0.1298461258, blue: 0.1298439503, alpha: 1))],
        startPoint: .top,
        endPoint: .bottom)
        .opacity(0.70)
    )
    .border(Color.gray, width: 1)
  }

  private var overlayButton7: some View {
    VStack(spacing: 5) {
      Text("DESTINATION")
        .foregroundColor(Color.white.opacity(0.70))
        .font(.title2)

      HStack(spacing: 10) {
        Text("TIME")
          .foregroundColor(Color.white.opacity(0.70))
          .font(.title2)

        Spacer()

        Text("5m")
          .foregroundColor(Color.white)
          .font(.title)
          .fontWeight(.semibold)
      }

      HStack(spacing: 10) {
        Text("DIST")
          .foregroundColor(Color.white.opacity(0.70))
          .font(.title2)

        Spacer()

        Text("11NM")
          .foregroundColor(Color.white)
          .font(.title)
          .fontWeight(.semibold)
      }
    }
    .padding(20)
    .frame(height: 120)
    .contentShape(Rectangle())
    .background(
      LinearGradient(
        colors: [Color(#colorLiteral(red: 0.370555222, green: 0.3705646992, blue: 0.3705595732, alpha: 1)), Color(#colorLiteral(red: 0.1298420429, green: 0.1298461258, blue: 0.1298439503, alpha: 1))],
        startPoint: .top,
        endPoint: .bottom)
        .opacity(0.70)
    )
    .border(Color.gray, width: 1)
  }
}

struct MapView_Previews: PreviewProvider {
  static var previews: some View {
    TabView {
      MapView()
        .tabItem {
          HStack {
            Image(systemName: "map")
            Text("Maps")
          }
        }
    }
.previewInterfaceOrientation(.landscapeRight)
  }
}
