//
//  DatePickerView.swift
//  MapkitTest
//
//  Created by Shanice Williams on 5/19/23.
//

import SwiftUI

struct DatePickerView: View {
    @State private var startDateRange1 = Date()
    @State private var endDateRange1 = Date()
    @State private var startDateRange2 = Date()
    @State private var endDateRange2 = Date()

    var body: some View {
        VStack {
            DatePicker("Start Date Range 1", selection: $startDateRange1, displayedComponents: .date)
                .padding()
            
            DatePicker("End Date Range 1", selection: $endDateRange1, in: startDateRange1..., displayedComponents: .date)
                .padding()

            Divider()

            DatePicker("Start Date Range 2", selection: $startDateRange2, displayedComponents: .date)
                .padding()
            
            DatePicker("End Date Range 2", selection: $endDateRange2, in: startDateRange2..., displayedComponents: .date)
                .padding()
        }
        .padding()
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
