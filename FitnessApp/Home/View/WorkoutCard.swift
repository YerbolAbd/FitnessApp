//
//  WorkOutCard.swift
//  FitnessApp
//
//  Created by Ербол on 24.12.2024.
//

import SwiftUI


struct WorkoutCard: View {
    @State var workout: Workout
    var body: some View {
        HStack {
            Image(systemName: workout.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48)
                .padding()
                .foregroundColor(workout.tintColor)
                .background(.gray.opacity(0.2))
                .cornerRadius(10)
            VStack(spacing: 16){
                HStack{
                    Text(workout.title)
                        .font(.title3)
                        .bold()
                    Spacer()
                    Text(workout.duration)
                }
                HStack{
                    Text(workout.date)
                    Spacer()
                    Text(workout.calories)
                }
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    WorkoutCard(workout: Workout(id: 0, title: "Running", duration: "23 minutes", image: "figure.run", date: "Aug 3", calories: "341 kcal", tintColor: .cyan))
}
