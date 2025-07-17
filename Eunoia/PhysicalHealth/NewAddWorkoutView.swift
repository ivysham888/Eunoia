//
//  NewAddWorkoutView.swift
//  Eunoia
//
//  Created by Amanda Martin on 7/16/25.
//

import SwiftUI
import SwiftData
struct ToggleItem: Identifiable {
    var id: UUID = UUID()
    var title: String
    var isOn: Bool = false
}
struct NewAddWorkoutView: View {
    @State private var toggleItems = [
        ToggleItem(title: "Wardio", isOn: false),
        ToggleItem(title: "Weights", isOn: false),
        ToggleItem(title: "Yoga", isOn: false),
        ToggleItem(title: "Bodyweight", isOn: false)
    ]
    @Binding var showNewWorkout: Bool
    @State private var toggle1 = false
    @State private var toggle2 = false
    @Bindable var workout: Workout
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
       VStack {
           Spacer()
           Text("Add workout:")
               .font(.title)
               .fontWeight(.semibold)
               .foregroundColor(Color("brown1"))
           
           TextField("Enter the workout description...", text: $workout.title, axis: .vertical)
               .padding()
                   .background(Color(.systemGroupedBackground))
                   .cornerRadius(15)
                     .padding()
           
           ForEach($toggleItems) { $item in
               Toggle(item.title, isOn: $item.isOn)
                   .font(.body)
                   .fontWeight(.medium)
                   .foregroundColor(Color("brown1"))
           } .tint(Color("brown1"))
           
           
           Button {
               addWorkout()
               showNewWorkout = false
           } label: {
               Text("Save")
                   .font(.body)
                   .fontWeight(.black)
                   .foregroundColor(Color("bluegreen1"))
           }

        }//vstack
       //.padding()
    }//body
    func addWorkout() {
        let workout = Workout(title: workout.title, isImportant: workout.isImportant)
        modelContext.insert(workout)
    }
}//struct

#Preview {
    NewAddWorkoutView (showNewWorkout: Binding.constant(false), workout: Workout(title: "", isImportant: false))
}
