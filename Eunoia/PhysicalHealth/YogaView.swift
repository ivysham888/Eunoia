//
//  YogaView.swift
//  Eunoia
//
//  Created by Amanda Martin on 7/16/25.
//

import SwiftUI

struct YogaView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.tanbackground)
                .ignoresSafeArea()
            ScrollView(.vertical){
                VStack{
                    Text("Yoga/Stretching")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(Color("brown1"))
                    
                    Text("Improve flexibility, mobility, balance, and reduce stress.")
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(Color("brown1"))
                        .multilineTextAlignment(.center)
                    
                    Text("Cat-Cow Pose:")
                        .font(.body)
                        .fontWeight(.black)
                        .foregroundColor(Color("brown1"))
                        .padding(.vertical, 4.0)
                    Text("How: On all fours (hands and knees), inhale as you drop your belly, lift your chest and tailbone (Cow). Exhale as you round your spine, tuck your chin to your chest (Cat). Benefits: Warms up the spine, improves flexibility in the back, hips, and abdomen.")
                        .font(.body)
                        .foregroundColor(Color("brown1"))
                        .padding(.vertical, 4.0)
                    
                    Text("Downward-Facing Dog:")
                        .font(.body)
                        .fontWeight(.black)
                        .foregroundColor(Color("brown1"))
                        .padding(.vertical, 4.0)
                    Text("How: From all fours, lift your hips up and back, forming an inverted 'V' shape. Straighten your arms and legs (but keep a micro-bend in knees if hamstrings are tight), press heels towards the floor.Benefits: Stretches hamstrings, calves, shoulders; strengthens arms and legs; elongates the spine.")
                        .font(.body)
                        .foregroundColor(Color("brown1"))
                        .padding(.vertical, 4.0)
        
                    Text("Child's Pose:")
                        .font(.body)
                        .fontWeight(.black)
                        .foregroundColor(Color("brown1"))
                        .padding(.vertical, 4.0)
                    Text("How: Kneel on the floor, bring your big toes to touch, sit your hips back towards your heels, and fold forward, resting your torso between your thighs. Extend arms forward or back alongside your body.Benefits: Gentle stretch for hips, thighs, and ankles; calms the brain and helps relieve stress and fatigue. A great resting pose.")
                        .font(.body)
                        .foregroundColor(Color("brown1"))
                        .padding(.vertical, 4.0)
                    
                    Text("Mountain Pose:")
                        .font(.body)
                        .fontWeight(.black)
                        .foregroundColor(Color("brown1"))
                        .padding(.vertical, 4.0)
                    Text("How: Stand tall with feet hip-width apart, arms by your sides. Ground through all four corners of your feet, lift through the crown of your head, and engage your core.Benefits: Improves posture, balance, and creates a sense of groundedness. The foundation for all standing poses.")
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
    YogaView()
}
