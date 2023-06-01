//
//  MyPickerView.swift
//  MapkitTest
//
//  Created by Shanice Williams on 5/18/23.
//

import SwiftUI


struct MyPickerView: View {
    
    @State private var image: Image?
    @State private var isEditing = false
    
    @State private var selectedItem: String = ""
    @State private var arrivalDate = Date()
    @State private var departureDate = Date()
    
    @State private var selectedState: String = ""
    @State private var selectedCity: String = ""
    
    @State private var isSaveButtonPressed = false
    
    let states = ["Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"]
    
    let cities = [
        "Alabama": ["Birmingham", "Montgomery", "Mobile", "Huntsville", "Tuscaloosa", "Hoover", "Dothan", "Auburn", "Decatur", "Madison"],
        "Alaska": ["Anchorage", "Fairbanks", "Juneau", "Sitka", "Ketchikan", "Wasilla", "Kenai", "Kodiak", "Bethel", "Palmer"],
        "Arizona": ["Phoenix", "Tucson", "Mesa", "Chandler", "Scottsdale", "Glendale", "Gilbert", "Tempe", "Peoria", "Surprise"],
        "Florida": ["Orlando", "Miami", "Kissimmee", "Jacksonville", "Tampa","Fort Lauderdale"]]
    // ... and so on for other states
    
    @State private var isButton1Selected = false
    @State private var isButton2Selected = false
    @State private var isButton3Selected = false
    
    
    var body: some View {
        
        let link = URL(string: "https://www.expedia.com")!
        
        //        Stack(alignment: .trailing) {
        //            ShareLink("", item: link)
        //        }
        //
        
        NavigationStack{
            
                
                VStack {
                    HStack{
                        ShareLink("", item: link)
                        
                    }
                    Text ("Name Your Trip")
                        .font(.largeTitle)
                        .padding()
                    
                    Image("Miami")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .clipShape(Circle())
                    //                .overlay(Circle().stroke(Color.black, lineWidth: 2))
                        .padding()
                    
                    
                    
                    Form {
                        Section(header: Text("Destination")) {
                            
                            HStack {
                                Text("State")
                                    .fontWeight(.bold)
                                Picker("", selection: $selectedState) {
                                    
                                    ForEach(states, id: \.self) { state in
                                        Text(state).tag(state)
                                    }
                                }
                                Spacer()
                            }
                            HStack {
                                Text("City")
                                    .fontWeight(.bold)
                                Picker("", selection: $selectedCity) {
                                    
                                    ForEach(cities[selectedState] ?? [], id: \.self) { city in
                                        Text(city).tag(city)
                                    }
                                }
                            }
                        }
                        Section {
                            VStack {
                                DatePicker("Arrival Date", selection: $arrivalDate, displayedComponents: .date)
                                
                                Divider()
                                
                                DatePicker("Departure Date", selection: $departureDate, displayedComponents: .date)
                            }
                        }
                        
                        Section (header: Text("Food")) {
                            HStack {
                                Button(action: {
                                    isButton1Selected.toggle()
                                }) {
                                    Text("Pizza")
                                        .foregroundColor(.white)
                                        .padding()
                                        .background(isButton1Selected ? Color.blue : Color.gray)
                                        .cornerRadius(10)
                                }
                                
                                Button(action: {
                                    isButton2Selected.toggle()
                                }) {
                                    Text("Chicken")
                                        .foregroundColor(.white)
                                        .padding()
                                        .background(isButton2Selected ? Color.blue : Color.gray)
                                        .cornerRadius(10)
                                }
                                
                                Button(action: {
                                    isButton3Selected.toggle()
                                }) {
                                    Text("Seafood")
                                        .foregroundColor(.white)
                                        .padding()
                                        .background(isButton3Selected ? Color.blue : Color.gray)
                                        .cornerRadius(10)
                                }
                            }
                        }
                        NavigationLink(
                            destination: DashboardView(),
                            isActive: $isSaveButtonPressed,
                            label: {
                                Button(action: {
                                    isSaveButtonPressed = true
                                }) {
                                    Text("Save")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                        .padding()
                                        .background(Color.blue)
                                        .cornerRadius(10)
                                }
                                
                            }
                            
                        )
                        
                    }
                    
                    
                    
                }
                
                
            
        }
    }
}
    
    struct MyPickerView_Previews: PreviewProvider {
        static var previews: some View {
            MyPickerView()
        }
    }

