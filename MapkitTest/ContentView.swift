//
//  ContentView.swift
//  MapkitTest
//
//  Created by Shanice Williams on 5/1/23.
//

import SwiftUI

struct ContentView: View {
    @State private var text: String = ""
    @State private var savedText: String = ""

    var body: some View {
        VStack {
            TextField("Enter text", text: $text)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .autocapitalization(.none)
                .disableAutocorrection(true)
            
            Button(action: {
                savedText = text
            }) {
                Text("Save")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            
            Text("Saved Text: \(savedText)")
                .padding()
                .foregroundColor(.blue)
                .font(.headline)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
