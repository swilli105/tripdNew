//
//  TripDetails.swift
//  MapkitTest
//
//  Created by Shanice Williams on 5/16/23.
//

import SwiftUI

struct TripDetails: View {
    
    @State private var destination = ""
    @State private var arrivalDate = Date.now
    @State private var departureDate = Date.now
    
    var body: some View {
        NavigationStack {
            
            ZStack {
                
                Color("Tan")
                    .ignoresSafeArea(.all)
                
                VStack {
                    
                    Spacer()
                        .frame(height: 80)
                    
                    Text("Trip Details")
                        .font(.system(.largeTitle, design: .rounded))
                        .fontWeight(.semibold)
                    Group {
                        TextField("Destination", text: $destination)
                    }
                  
                    .textFieldStyle(OutlinedTextFieldStyle())
                    .padding(.horizontal, 20)
                    
                    DatePicker(selection: $arrivalDate, in: ...Date.now, displayedComponents: .date){
                        Text("Arrival Date")
                            .padding()
                        
//                        DatePicker(selection: $departureDate, in: ...Date.now, displayedComponents: .date) {
//                            Text("Departure Date")
//                                .padding()
//                        }
                    }
                }
                
            }
        }
    }
}

struct TripDetails_Previews: PreviewProvider {
    static var previews: some View {
        TripDetails()
    }
}
