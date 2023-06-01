//
//  TripItineraryView.swift
//  MapkitTest
//
//  Created by Shanice Williams on 5/31/23.
//

import SwiftUI

struct TripItineraryView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    Image("BestiesTrip")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 200)
                        .padding(.top)
                    
                    TripDestination(title: "Day 1", activity: ["Activity 1", "Activity 2", "Activity 3", "Activity 4"])
                    
                    TripDestination(title: "Day 2", activity: ["Activity 1", "Activity 2", "Activity 3", "Activity 4"])
                    
                    TripDestination(title: "Day 3", activity: ["Activity 1", "Activity 2", "Activity 3", "Activity 4"])
                    
                    TripDestination(title: "Day 4", activity: ["Activity 1", "Activity 2", "Activity 3", "Activity 4"])
                    
                    // Add more TripDestination views as needed
                }
                .padding()
            }
            .navigationBarTitle("Trip Itinerary", displayMode: .inline)
        }
    }
}

struct TripDestination: View {
    let title: String
    let activity: [String]
    @State private var selectedActivity: String? = nil
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title) // Add this line to display the title
                .font(.headline)
            
            ForEach(activity, id: \.self) { item in
                NavigationLink(destination: DetailedActivityView(activityDetails: ActivityDetails(information: "Information for \(item)", time: "Time for \(item)", cost: "Cost for \(item)"))) {
                    HStack {
                        Image(systemName: selectedActivity == item ? "largecircle.fill.circle" : "circle")
                            .foregroundColor(selectedActivity == item ? .blue : .gray)
                        
                        Text(item)
                            .font(.headline)
                            .foregroundColor(selectedActivity == item ? .blue : .black)
                    }
                }
            }
        }
        .padding()
    }
}

struct ActivityDetails {
    let information: String
    let time: String
    let cost: String
}

struct DetailedActivityView: View {
    let activityDetails: ActivityDetails
    
    var body: some View {
            VStack {
                Rectangle()
                    .foregroundColor(Color.blue)
                    .frame(height: 180)
                    .overlay(Text("Information").font(.title).foregroundColor(.white))
                
                Rectangle()
                    .foregroundColor(Color.green)
                    .frame(height: 180)
                    .overlay(Text("Time").font(.title).foregroundColor(.white))
                
                Rectangle()
                    .foregroundColor(Color.yellow)
                    .frame(height: 180)
                    .overlay(Text("Cost").font(.title).foregroundColor(.white))
                
                VStack {
                    Text(activityDetails.information)
                        .font(.headline)
                        .padding()
                    
                    Text(activityDetails.time)
                        .font(.headline)
                        .padding()
                    
                    Text(activityDetails.cost)
                        .font(.headline)
                        .padding()
                }
            }
            .padding()
        }
    }

struct TripItineraryView_Previews: PreviewProvider {
    static var previews: some View {
        TripItineraryView()
    }
}
