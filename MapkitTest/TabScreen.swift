//
//  TabView.swift
//  MapkitTest
//
//  Created by Shanice Williams on 5/22/23.
//

import SwiftUI

struct TabScreen: View {

    var body: some View {
        TabView {
            DashboardView()
                 .tabItem {
                     Label ("Home", systemImage: "globe.americas")
                 }
            MyPickerView()
                .tabItem {
                    Label ("Create A Trip", systemImage: "airplane")
                }
            TripItineraryView()
                 .tabItem {
                     Label ("Itinerary", systemImage: "list.bullet.rectangle.portrait")
                 }
            TripView()
                 .tabItem {
                     Label ("Group Wallet", systemImage: "creditcard")
                 }        }
    }
}

struct TabScreen_Previews: PreviewProvider {
    static var previews: some View {
        TabScreen()
    }
}
