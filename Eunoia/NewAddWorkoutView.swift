//
//  NewAddWorkoutView.swift
//  Eunoia
//
//  Created by Amanda Martin on 7/16/25.
//

import SwiftUI
import SwiftData

struct NewAddWorkoutView: View {
    
    @Bindable var workout: Workout
    
    var body: some View {
       VStack {
           Spacer()
           Text("Add workout:")
               .font(.title)
               .fontWeight(.semibold)
               .foregroundColor(Color("brown1"))
           
           TextField("Enter the task description...", text: $workout.title, axis: .vertical)
               .padding()
                   .background(Color(.systemGroupedBackground))
                   .cornerRadius(15)
                     .padding()
           
           Toggle(isOn:  $workout.isImportant) {
               Text("Cardio")
                   .font(.body)
                   .fontWeight(.medium)
                   .foregroundColor(Color("brown1"))
           }//toggle
           .tint(Color("brown1"))
           Toggle(isOn: $workout.isImportant) {
               Text("Weightlifting")
                   .font(.body)
                   .fontWeight(.medium)
                   .foregroundColor(Color("brown1"))
           }//toggle
           .tint(Color("brown1"))
           Toggle(isOn: $workout.isImportant) {
               Text("Yoga")
                   .font(.body)
                   .fontWeight(.medium)
                   .foregroundColor(Color("brown1"))
           }//toggle
           .tint(Color("brown1"))
           
           Button {
           } label: {
               Text("Save")
                   .font(.body)
                   .fontWeight(.black)
                   .foregroundColor(Color("green1"))
           }

        }//vstack
       .padding()
    }//body
}//struct

#Preview {
    NewAddWorkoutView(workout: Workout(title: "", isImportant: false))
}
