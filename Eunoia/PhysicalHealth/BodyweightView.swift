//
//  BodyweightView.swift
//  Eunoia
//
//  Created by Amanda Martin on 7/16/25.
//

import SwiftUI

struct BodyweightView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.tanbackground)
                .ignoresSafeArea()
            ScrollView(.vertical){
                VStack{
                    Text("Bodyweight")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(Color("brown1"))
                    
                    Text("Building a strong body doesn't always require equipment!")
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(Color("brown1"))
                        .multilineTextAlignment(.center)
                    
                    
                    Text("Mountain Climbers:")
                        .font(.body)
                        .fontWeight(.black)
                        .foregroundColor(Color("brown1"))
                        .padding(.vertical, 4.0)
                    Text("How to: Start in a high plank position (hands directly under shoulders, body in a straight line). Alternately bring one knee towards your chest, then quickly switch legs, mimicking a running motion. Keep your core tight and hips stable. Benefits: Works core (especially lower abs and obliques), shoulders, and offers a good cardio challenge.")
                        .font(.body)
                        .foregroundColor(Color("brown1"))
                        .padding(.vertical, 4.0)
                    
                    Text("Burpees (with or without a push-up):")
                        .font(.body)
                        .fontWeight(.black)
                        .foregroundColor(Color("brown1"))
                        .padding(.vertical, 4.0)
                    Text("How to: Start standing. Drop into a squat, placing hands on the floor. Kick your feet back to a plank position. (Optional: perform a push-up). Jump your feet back to the squat position. Explode upwards into a jump. Benefits: Excellent for cardiovascular fitness, explosive power, and full-body strength endurance.")
                        .font(.body)
                        .foregroundColor(Color("brown1"))
                        .padding(.vertical, 4.0)
        
                    Text("Plank Jacks:")
                        .font(.body)
                        .fontWeight(.black)
                        .foregroundColor(Color("brown1"))
                        .padding(.vertical, 4.0)
                    Text(" How to: Start in a high plank position. Keeping your core tight and hips stable, jump both feet out to the sides (like a jumping jack), then jump them back together. Benefits: Engages core, shoulders, and adds a dynamic cardio element.")
                        .font(.body)
                        .foregroundColor(Color("brown1"))
                        .padding(.vertical, 4.0)
                    
                    Text("Bear Crawls:")
                        .font(.body)
                        .fontWeight(.black)
                        .foregroundColor(Color("brown1"))
                        .padding(.vertical, 4.0)
                    Text("How to: Start on all fours (hands and knees), but lift your knees slightly off the ground so you're balancing on hands and toes. Move forward by simultaneously moving your right hand and left foot, then left hand and right foot, keeping your back flat and hips stable. Benefits: Builds full-body coordination, core strength, shoulder stability, and hip mobility.")
                        .font(.body)
                        .foregroundColor(Color("brown1"))
                        .padding(.vertical, 4.0)
                    
                    Text("Spiderman Push-ups:")
                        .font(.body)
                        .fontWeight(.black)
                        .foregroundColor(Color("brown1"))
                        .multilineTextAlignment(.center)
                        .padding(.vertical, 4.0)
                    Text("How to: Perform a regular push-up, but as you lower your chest, bring one knee out to the side towards your elbow. Push back up as you return your leg to the starting plank position. Alternate sides with each push-up. Benefits: Adds a significant core and hip mobility challenge to a standard push-up, working chest, shoulders, and triceps more intensely")
                        .font(.body)
                        .foregroundColor(Color("brown1"))
                        .padding(.vertical, 4.0)
                    
                    Text("Walkouts (Inchworms):")
                        .font(.body)
                        .fontWeight(.black)
                        .foregroundColor(Color("brown1"))
                        .multilineTextAlignment(.center)
                        .padding(.vertical, 4.0)
                    Text("How to: Start standing. Hinge at your hips and walk your hands forward on the floor until you reach a high plank position. Hold briefly, then slowly walk your hands back towards your feet and stand up. Benefits: Stretches hamstrings and calves, strengthens core, shoulders, and upper back.")
                        .font(.body)
                        .foregroundColor(Color("brown1"))
                        .padding(.vertical, 4.0)
                    
                    Text("Handstand Holds (against a wall):")
                        .font(.body)
                        .fontWeight(.black)
                        .foregroundColor(Color("brown1"))
                        .multilineTextAlignment(.center)
                        .padding(.vertical, 4.0)
                    Text("How to: Safely kick up into a handstand against a wall. Hold the position, keeping your core tight and arms locked out. Benefits: Builds immense shoulder strength, core stability, and upper body endurance. (Start with short holds and ensure safety).")
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
    BodyweightView()
}
