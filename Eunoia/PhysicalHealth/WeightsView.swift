//
//  WeightsView.swift
//  Eunoia
//
//  Created by Amanda Martin on 7/16/25.
//

import SwiftUI

struct WeightsView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.tanbackground)
                .ignoresSafeArea()
            ScrollView(.vertical){
                VStack{
                    Text("Weightlifting")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(Color("brown1"))
                    
                    Text("Build muscle and a strong body.")
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(Color("brown1"))
                        .multilineTextAlignment(.center)
                    
                    Text("Squats:")
                        .font(.body)
                        .fontWeight(.black)
                        .foregroundColor(Color("brown1"))
                        .padding(.vertical, 4.0)
                    Text("Muscles: Quadriceps, glutes, hamstrings, core, lower back. Variations: Back squat (barbell on your upper back), front squat (barbell on front of shoulders), goblet squat (holding a dumbbell/kettlebell at your chest), bodyweight squat. Benefits: Known as the King of exercises – builds full lower body and core strength, highly functional.")
                        .font(.body)
                        .foregroundColor(Color("brown1"))
                        .padding(.vertical, 4.0)
                    
                    Text("Deadlifts:")
                        .font(.body)
                        .fontWeight(.black)
                        .foregroundColor(Color("brown1"))
                        .padding(.vertical, 4.0)
                    Text("Muscles: Hamstrings, glutes, lower back, lats, traps, forearms (grip). Variations: Conventional deadlift, sumo deadlift, Romanian deadlift (RDL - focuses more on hamstrings and glutes). Benefits: Excellent for posterior chain strength, overall power, and grip strength. Requires strict form.")
                        .font(.body)
                        .foregroundColor(Color("brown1"))
                        .padding(.vertical, 4.0)
        
                    Text("Bench Press:")
                        .font(.body)
                        .fontWeight(.black)
                        .foregroundColor(Color("brown1"))
                        .padding(.vertical, 4.0)
                    Text("Muscles: Chest (pectorals), shoulders (anterior deltoids), triceps. Variations: Barbell bench press, dumbbell bench press (allows more range of motion and individual arm work), incline bench press (targets upper chest more). Benefits: Builds upper body pushing strength.")
                        .font(.body)
                        .foregroundColor(Color("brown1"))
                        .padding(.vertical, 4.0)
                    
                    Text("Overhead Press (or Military Press):")
                        .font(.body)
                        .fontWeight(.black)
                        .foregroundColor(Color("brown1"))
                        .padding(.vertical, 4.0)
                    Text("Muscles: Shoulders (deltoids), triceps, upper chest, core (for stability). Variations: Standing barbell overhead press, seated dumbbell overhead press. Benefits: Develops strong, broad shoulders and upper body pushing power.")
                        .font(.body)
                        .foregroundColor(Color("brown1"))
                        .padding(.vertical, 4.0)
                    
                    Text("Rows: (for back strength, balancing pressing movements)")
                        .font(.body)
                        .fontWeight(.black)
                        .foregroundColor(Color("brown1"))
                        .multilineTextAlignment(.center)
                        .padding(.vertical, 4.0)
                    Text("Muscles: Back (lats, rhomboids, traps), biceps, forearms. Variations: Bent-over barbell row, dumbbell row (single arm), seated cable row, inverted row (bodyweight). Benefits: Crucial for back thickness and width, improving posture, and balancing all the pushing exercises.")
                        .font(.body)
                        .foregroundColor(Color("brown1"))
                        .padding(.vertical, 4.0)
                    
                    
                }//vstack
            }//scroll view
            .padding()
        }//zstack
    }
}

#Preview {
    WeightsView()
}
