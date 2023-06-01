//
//  CreateTrip.swift
//  MapkitTest
//
//  Created by Shanice Williams on 5/2/23.
//

import SwiftUI


        
struct CreateTrip: View {
    @State private var selectedTransportation = "Plane"
    let transportation = ["Flying", "Train", "RoadTrip", "Boat", "Bus"]
    
    var body: some View {
        NavigationStack {
          
                Form {
                    Section {
                        Picker("How are you traveling", selection: $selectedTransportation) {
                            ForEach(transportation, id: \.self) {
                                Text($0)
                            }
                        }
                    }
                }
                .navigationTitle("Create A Trip")
            }
        }
    }

        struct CreateTrip_Previews: PreviewProvider {
            static var previews: some View {
                CreateTrip()
            }
        }
    
