//
//  HomeView.swift
//  FitnessApp
//
//  Created by Ербол on 24.12.2024.
//

import SwiftUI

struct HomeView: View {
    @State var calories: Int = 123
    @State var active: Int = 123
    @State var stand: Int = 8
     var mockActivities = [
        Activity(id: 0, title: "Today Steps", subttitle: "Goal 10,000", image: "figure.walk", tintColor: .green, amount: "9153"),
        Activity(id: 1, title: "Workout", subttitle: "Goal 9,000", image: "figure.walk", tintColor: .red, amount: "7000"),
        Activity(id: 2, title: "Today", subttitle: "Goal 12,000", image: "figure.walk", tintColor: .blue, amount: "8100"),
        Activity(id: 3, title: "Today Steps", subttitle: "Goal 11,000", image: "figure.run ", tintColor: .purple , amount: "12000")]
    
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading) {
                Text("Welcome")
                    .font(.largeTitle)
                    .padding()
                
                HStack {
                    Spacer()
                    VStack {
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Calories")
                                .font(.callout)
                                .bold()
                                .foregroundColor(.red)
                            
                            Text("123 Kcal")
                                .bold()
                        }
                        .padding(.bottom)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Active")
                                .font(.callout)
                                .bold()
                                .foregroundColor(.green)
                            
                            Text("52 mins")
                                .bold()
                        }
                        .padding(.bottom)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Stand")
                                .font(.callout)
                                .bold()
                                .foregroundColor(.blue)
                            
                            Text("8 hours")
                                .bold()
                        }
                    }
                    
                    Spacer()
                    
                    ZStack {
                        ProgressCircleView(progress: $calories, goal: 600, color: .red)
                        
                        ProgressCircleView(progress: $active, goal: 60, color: .green)
                            .padding(.all, 20)
                        ProgressCircleView(progress: $stand, goal: 12, color: .blue)
                            .padding(.all, 40)
                    }
                    .padding(.horizontal)
                    
                    Spacer()
                }
                .padding()
                
                HStack {
                    Text("Fitness activity")
                        .font(.title2)
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("Show more")
                            .padding(.all, 10)
                            .foregroundColor(.white)
                            .background(.blue)
                            .cornerRadius(20)
                    }
                }
                .padding(.horizontal)
                
                LazyVGrid(columns: Array(repeating: GridItem(spacing: 20), count: 2)) {
                    ForEach(mockActivities, id: \.id) { activity in
                        ActivityCardView(activity: activity)
                    }
                }
                .padding( )
            }
        }
    }
}

#Preview {
    HomeView()
}
