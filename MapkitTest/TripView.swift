//
//  TripView.swift
//  MapkitTest
//
//  Created by Shanice Williams on 5/2/23.
//

import SwiftUI

struct TripView: View {
    var body: some View {
       
        
        NavigationView {
            NavigationLink(destination: Text("Miami Trip")) {
           
                ScrollView(.horizontal) {
              
                    
               
                HStack {
                    NavigationLink(destination: Text("Dubai Trip")) {
                        ZStack {
                            Image("Dubai")
                                .resizable()
                                .frame(width: 320 , height: 200)
                            VStack{
                                Text("Dubai")
                                    .foregroundColor(.white)
                                    .font(.system(size: 30))
                                Text ("Jan 1")
                                    .foregroundColor(.white)
                            }
                        }
                        }
                    
                    ZStack {
                        Image("Miami")
                            .resizable()
                            .frame(width: 320 , height: 200)
                            .padding()
                        VStack{
                            Text("Miami")
                                .foregroundColor(.white)
                                .font(.system(size: 30))
                            Text ("Jan 1")
                                .foregroundColor(.white)
                        }
                    }
                    
                    
                    }
                    
                        HStack {
                            NavigationLink(destination: Text("Dubai Trip")) {
                                ZStack {
                                    Image("Dubai")
                                        .resizable()
                                        .frame(width: 320 , height: 200)
                                    VStack{
                                        Text("Dubai")
                                            .foregroundColor(.white)
                                            .font(.system(size: 30))
                                        Text ("Jan 1")
                                            .foregroundColor(.white)
                                    }
                                }
                            }
                            
                            
                            ZStack {
                                
                                Image("Miami")
                                    .resizable()
                                    .frame(width: 320 , height: 200)
                                    .padding()
                                VStack{
                                    Text("Miami")
                                        .foregroundColor(.white)
                                        .font(.system(size: 30))
                                    Text ("Jan 1")
                                        .foregroundColor(.white)
                                    
                                }
                            }
                            
                        }
                        }
            }
            .navigationTitle("Current Trips")
        }
        
    }
}
struct TripView_Previews: PreviewProvider {
    static var previews: some View {
        TripView()
    }
}
