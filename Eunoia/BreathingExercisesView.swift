//
//  BreathingExercisesView.swift
//  Eunoia
//
//  Created by Anushka Karthikeyan on 7/16/25.
//

import SwiftUI

struct BreathingExercise: Identifiable {
    let id = UUID()
    let name: String
    let details: String
}

struct BreathingExercisesView: View {
    let exercises = [
        BreathingExercise(name: "4-7-8 Breathing", details: "1. Breathe in quietly through your nose for 4 seconds.\n2. Hold your breath for 7 seconds.\n3. Exhale forcefully through your mouth for 8 seconds.\n4. Repeat 3 more times."),
        BreathingExercise(name: "Box Breathing", details: "1. Inhale through your nose for 4 seconds.\n2. Hold your breath for 4 seconds.\n3. Exhale slowly through your mouth for 4 seconds.\n4. Hold your breath for 4 seconds.\n5. Repeat."),
        BreathingExercise(name: "Diaphragmatic Breathing", details: "1. Sit or lie down comfortably.\n2. Place one hand on your chest, one on your belly.\n3. Breathe in deeply through your nose, letting your belly rise.\n4. Exhale slowly through pursed lips.\n5. Repeat for 5-10 minutes."),
        BreathingExercise(name: "Alternate Nostril Breathing", details: "1. Sit comfortably with a straight spine.\n2. Close your right nostril with your thumb and inhale through the left.\n3. Close the left nostril with your ring finger and exhale through the right.\n4. Inhale through the right nostril.\n5. Close the right nostril and exhale through the left.\n6. Continue alternating for 1-2 minutes."),
        BreathingExercise(name: "Pursed-Lip Breathing", details: "1. Inhale slowly through your nose for 2 seconds.\n2. Purse your lips as if you're blowing out a candle.\n3. Exhale slowly through pursed lips for 4 seconds.\n4. Focus on making your exhale longer than your inhale.\n5. Continue for several minutes."),
        BreathingExercise(name: "Resonant Breathing", details: "1. Inhale slowly through your nose for 5 seconds.\n2. Exhale gently for 5 seconds.\n3. Keep the breath smooth and even.\n4. Focus your attention on your breath.\n5. Practice for 5-10 minutes to reduce stress."),
        BreathingExercise(name: "Mindful Breathing", details: "1. Sit quietly and focus on your natural breath.\n2. Inhale and say silently 'I am breathing in'.\n3. Exhale and say 'I am breathing out'.\n4. Notice the sensation of air moving in and out.\n5. Continue for 5-10 minutes, returning to the breath if your mind wanders."),
        BreathingExercise(name: "Ocean Breath (Ujjayi)", details: "1. Inhale through your nose while slightly constricting your throat.\n2. Exhale through your nose while keeping the throat constricted, creating an ocean-like sound.\n3. Keep the breath slow and controlled.\n4. Focus on the sound and rhythm.\n5. Practice for 5-10 minutes."),
        BreathingExercise(name: "Equal Breathing (Sama Vritti)", details: "1. Inhale slowly through your nose for 4 counts.\n2. Exhale through your nose for 4 counts.\n3. Make sure both inhale and exhale are even.\n4. You can increase to 5 or 6 counts as you get comfortable.\n5. Continue for 3-5 minutes."),
        BreathingExercise(name: "Belly Breathing for Sleep", details: "1. Lie down in a dark, quiet space.\n2. Place your hands on your stomach.\n3. Inhale deeply through your nose, feeling your stomach rise.\n4. Exhale slowly through your mouth.\n5. Visualize tension leaving your body as you breathe out.\n6. Repeat until you feel drowsy."),
        BreathingExercise(name: "Breath Counting", details: "1. Sit or lie down in a comfortable position.\n2. Inhale and exhale normally.\n3. After each exhale, count 'one', then 'two', up to 'five'.\n4. After 'five', start again at 'one'.\n5. If you lose count, gently start over.\n6. Continue for 5-10 minutes.")

        
    ]
    
    var body: some View {
        ZStack {
            Color("tanbackground")
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Breathing Exercises")
                    .font(.largeTitle)
                    .bold()
                    .padding(.horizontal)
                    .padding(.top)
                    .foregroundColor(.brown)
                Text("Feeling anxious, stressed, or overwhelmed? Try one of these simple breathing exercises to calm your mind and body.")
                    .font(.headline)
                    .padding(.horizontal)
                    .foregroundColor(.brown1)
                    
                    .padding(.bottom)
                
                List {
                    ForEach(exercises) { exercise in
                        NavigationLink(destination: ExerciseDetailView(exercise: exercise)) {
                            Text(exercise.name)
                                .font(.headline)
                                .padding(.vertical, 8)
                        }
                        .listRowBackground(Color.clear) // transparent row
                    }
                }
                .listStyle(.plain) // cleaner look
                .background(Color.clear)
                .foregroundColor(.brown)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ExerciseDetailView: View {
    let exercise: BreathingExercise

    var body: some View {
        ZStack {
            Color("tanbackground")
                .ignoresSafeArea()

            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    Text(exercise.name)
                        .font(.title)
                        .foregroundColor(.brown)
                        .bold()
                        .padding(.bottom)

                    Text(exercise.details)
                        .font(.title2)
                    

                    Spacer()
                }
                .padding()
            }
        }
        .foregroundColor(.brown)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationView {
        BreathingExercisesView()
    }
}
