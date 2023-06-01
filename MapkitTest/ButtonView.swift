//
//  ButtonView.swift
//  MapkitTest
//
//  Created by Shanice Williams on 5/23/23.
//

import SwiftUI

struct ButtonView: View {
    @State private var selectedFoods: [Food] = []

    var body: some View {
        ScrollView {
            LazyVGrid(columns: createGrid()) {
                ForEach(Food.allCases, id: \.self) { food in
                    FoodButton(food: food, isSelected: isSelected(food))
                        .onTapGesture {
                            toggleSelection(food)
                        }
                }
            }
            .padding()
        }
    }

    func createGrid() -> [GridItem] {
        let columns = [
            GridItem(.flexible(), spacing: 16),
            GridItem(.flexible(), spacing: 16),
            GridItem(.flexible(), spacing: 16)
        ]
        return columns
    }

    func isSelected(_ food: Food) -> Bool {
        selectedFoods.contains(food)
    }

    func toggleSelection(_ food: Food) {
        if isSelected(food) {
            selectedFoods.removeAll { $0 == food }
        } else {
            selectedFoods.append(food)
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}

struct FoodButton: View {
    let food: Food
    let isSelected: Bool

    var body: some View {
        Text(food.rawValue)
            .foregroundColor(.white)
            .padding()
            .background(isSelected ? Color.blue : Color.gray)
            .cornerRadius(10)
    }
}
