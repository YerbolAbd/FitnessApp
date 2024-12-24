//
//  HomeViewModel.swift
//  FitnessApp
//
//  Created by Ербол on 24.12.2024.
//

import Foundation
import SwiftUI

class HomeViewModel: ObservableObject {
    @State var calories: Int = 123
    @State var active: Int = 123
    @State var stand: Int = 8
    var mockActivities = [
       Activity(id: 0, title: "Today Steps", subttitle: "Goal 10,000", image: "figure.walk", tintColor: .green, amount: "9153"),
       Activity(id: 1, title: "Workout", subttitle: "Goal 9,000", image: "figure.walk", tintColor: .red, amount: "7000"),
       Activity(id: 2, title: "Today", subttitle: "Goal 12,000", image: "figure.walk", tintColor: .blue, amount: "8100"),
       Activity(id: 3, title: "Today Steps", subttitle: "Goal 11,000", image: "figure.run ", tintColor: .purple , amount: "12000")]
   
   var mockWorkouts = [
       Workout(id: 0, title: "Running", duration: "23 minutes", image: "figure.run", date: "Aug 3", calories: "341 kcal", tintColor: .cyan),
       Workout(id: 1, title: "Workout", duration: "90 minutes", image: "figure.walk", date: "Aug 5", calories: "500 kcal", tintColor: .red),
       Workout(id: 2, title: "Cycling", duration: "47 minutes", image: "figure.run", date: "Aug 8", calories: "400 kcal", tintColor: .purple),
       Workout(id: 3, title: "Jumping", duration: "30 minutes", image: "figure.walk", date: "Aug 12", calories: "399 kcal", tintColor: .blue)
   ]
}
