//
//  DashboardView.swift
//  MapkitTest
//
//  Created by Shanice Williams on 5/31/23.
//

import SwiftUI

struct Trip: Identifiable {
    var id = UUID() // Add an identifier for each trip
    var title: String
    var destination: String
    var duration: String
}

struct DashboardView: View {
    var body: some View {
        NavigationView {
            TripsView()
                .navigationBarTitle("Trips")
                .navigationBarItems(trailing:
                    NavigationLink(destination: MyPickerView()) {
                        Image(systemName: "plus")
                            .imageScale(.large)
                            .padding()
                    }
                )
        }
    }
}

struct TripsView: View {
    let myTrips = [
        Trip(title: "Besties Gone Wild", destination: "Miami, FL", duration: "June 4, 2023 - June 10, 2023"),
        Trip(title: "Girl's Trip, The Bachelorette's, Self-care Retreat", destination: "Las Vegas, NV", duration: "August 20, 2023 - August 25, 2023"),
        Trip(title: "Girls Trip", destination: "New Orleans, LA", duration: "July 1, 2022 - July 7, 2022"),
        Trip(title: "Self retreat", destination: "Los Angeles, CA", duration: "December 15, 2022 - December 22, 2022"),
        Trip(title: "Baecation", destination: "Bangkok, TH", duration: "November 15, 2021 - November 29, 2021")
    ]

    var body: some View {
        ScrollView {
            VStack(spacing: 75) {
                SectionView(title: "Current Trip", trips: myTrips.filter { $0.title == "Besties Gone Wild" })
                
                SectionView(title: "Past Trips", trips: myTrips.filter { $0.title != "Besties Gone Wild" })
                
                SectionView(title: "Draft Trips", trips: myTrips.filter { $0.title == "Solo Dolo, Baecation" })
                
                Spacer()
            }
            .padding()
        }
    }
}

struct SectionView: View {
    let title: String
    let trips: [Trip]
    
    var body: some View {
        
            VStack(alignment: .leading) {
                Text(title)
                    .font(.headline)
                
                ForEach(trips) { trip in
                    TripRowView(trip: trip)
                }
            }
        }
    }


struct TripRowView: View {
    let trip: Trip

    var body: some View {
        
        VStack(alignment: .leading) {
            Text(trip.destination)
                .font(.title)

            Text("\(trip.duration)")
                .foregroundColor(.secondary)
        }
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)
    }
}


struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
