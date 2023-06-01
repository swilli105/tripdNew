//
//  Test.swift
//  MapkitTest
//
//  Created by Shanice Williams on 5/9/23.
//

import SwiftUI

struct CardView: View {
let title: String

var body: some View {
    VStack {
//        Text(title)
//            .font(.headline)
//            .padding(.top, 8)
        
        Image(title)
            .resizable()
            .scaledToFit()
            .frame(width: 320, height: 200)
            .cornerRadius(10)
            .overlay(Text(title))
            .font(.largeTitle)
            .foregroundColor(.white)
    }
//    .padding()
//    .frame(width: 220, height: 300)
//    .background(Color.white)
//    .cornerRadius(10)
//    .shadow(radius: 5)
}
}

struct CarouselView: View {
let cardTitles = ["Miami", "Dubai", "Houston", "Card 4", "Card 5"]

var body: some View {
    VStack {
        Text("Current Trips")
            .font(.largeTitle)
            .padding(.top, 50)
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(cardTitles, id: \.self) { title in
                    CardView(title: title)
                }
            }
        }
        .padding()
    }

}
}

struct CarouselView_Previews: PreviewProvider {
static var previews: some View {
CarouselView()
}
}
