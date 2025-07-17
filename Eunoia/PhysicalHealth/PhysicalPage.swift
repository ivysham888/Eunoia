//
//  PhysicalPage.swift
//  Eunoia
//
//  Created by Ivy Sham on 15/7/2025.
//

import SwiftUI
import SwiftData

struct PhysicalPage: View {
    
    @Environment(\.modelContext) var modelContext

    @State private var showNewWorkoutSheet = false
    @Query var workouts: [Workout]

    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.tanbackground)
                .ignoresSafeArea()

            VStack {
                Text("Physical Health")
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(Color("brown1"))
                    .padding(.top)

                Text("What is your goal for today?")
                    .font(.title2)
                    .fontWeight(.thin)
                    .foregroundColor(Color("bluegreen1"))
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 12.0)

                HStack {
                    NavigationLink(destination: CardioView()) {
                        Text("Cardio")
                            .frame(width: 150, height: 25)
                            .fontWeight(.bold)
                            .foregroundStyle(Color.white)
                            .font(.system(size: 20))
                            .padding()
                            .background(Color.brown2.clipShape(.rect(cornerRadius: 15)))
                    }

                    NavigationLink(destination: WeightsView()) {
                        Text("Weights")
                            .frame(width: 150, height: 25)
                            .fontWeight(.bold)
                            .foregroundStyle(Color.white)
                            .font(.system(size: 20))
                            .padding()
                            .background(Color.brown2.clipShape(.rect(cornerRadius: 15)))
                    }
                }
                HStack {
                    NavigationLink(destination: YogaView()) {
                        Text("Yoga/Stretch")
                            .frame(width: 150, height: 25)
                            .fontWeight(.bold)
                            .foregroundStyle(Color.white)
                            .font(.system(size: 20))
                            .padding()
                            .background(Color.brown2.clipShape(.rect(cornerRadius: 15)))
                    }

                    NavigationLink(destination: BodyweightView()) {
                        Text("Bodyweight")
                            .frame(width: 150, height: 25)
                            .fontWeight(.bold)
                            .foregroundStyle(Color.white)
                            .font(.system(size: 20))
                            .padding()
                            .background(Color.brown2.clipShape(.rect(cornerRadius: 15)))
                    }
                }

                HStack {
                    Text("Track your exercise")
                        .font(.title2)
                        .fontWeight(.black)
                        .foregroundColor(Color("brown1"))
                    Spacer()

                    Button {
                        showNewWorkoutSheet = true
                    } label: {
                        Text("+")
                            .font(.title)
                            .fontWeight(.black)
                            .foregroundColor(Color("brown1"))
                    }
                }
                .padding()
                
                .sheet(isPresented: $showNewWorkoutSheet) {
                    NewAddWorkoutView(showNewWorkout: $showNewWorkoutSheet, workout: Workout(title: "", isImportant: false))
                }
                
                List {
                    ForEach(workouts) { workoutItem in
                        HStack {
                            Text(workoutItem.title)
                                .foregroundColor(Color("brown1"))
                            Spacer() // Pushes title to left, workout type to right
                                .font(.caption)
                                .foregroundColor(Color("brown1"))
                        }
                        .swipeActions { // Add a swipe-to-delete action
                            Button("Delete", role: .destructive) {
                                modelContext.delete(workoutItem)
                            }
                        }
                    }
                    // List background modifiers should apply to the ForEach for row appearance
                    .listRowBackground(Color.clear) // Make row background transparent to show list background
                    .listRowSeparator(.hidden) // Hide default row separators
                }
                .background(Color.tanbackground) // Set the background of the List itself
                .scrollContentBackground(.hidden) // Hide the default system background for lists
                .listStyle(.plain) // Use .plain to remove default grouping styles
                .frame(maxWidth: .infinity, maxHeight: .infinity) // Make list fill available space

            } //VStack
            .padding(.horizontal) // Apply horizontal padding to the entire VStack content

        } //ZStack
        }
    } // End of body


#Preview {
    PhysicalPage()
        .modelContainer(for: Workout.self, inMemory: true) // Provide model container for preview
}
