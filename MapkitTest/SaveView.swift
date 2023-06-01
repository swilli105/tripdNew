//
//  SaveView.swift
//  MapkitTest
//
//  Created by Shanice Williams on 5/24/23.
//

import SwiftUI

struct SaveView: View {
    @State private var isSaveButtonPressed = false

    var body: some View {
        NavigationView {
            VStack {
                Text("Content View")
                    .font(.title)
                    .padding()

                NavigationLink(
                    destination: NextView(),
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
                .padding()
                .navigationTitle("Save Button Example")
            }
        }
    }
}

struct NextView: View {
    var body: some View {
        Text("Next View")
            .font(.title)
            .padding()
            .navigationTitle("Next View")
    }
}

struct SaveView_Previews: PreviewProvider {
    static var previews: some View {
        SaveView()
    }
}
