//
//  CardioView.swift
//  Eunoia
//
//  Created by Amanda Martin on 7/16/25.
//

import SwiftUI

struct CardioView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.tanbackground)
                .ignoresSafeArea()
            ScrollView(.vertical){
                VStack{
                    Text("Cardio")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(Color("brown1"))
                    
                    Text("Build a strong heart and lungs.")
                        .font(.body)
                        .fontWeight(.medium)
                        .foregroundColor(Color("brown1"))
                        .multilineTextAlignment(.center)
                    
                    Text("Running/Jogging:")
                        .font(.body)
                        .fontWeight(.black)
                        .foregroundColor(Color("brown1"))
                        .padding(.vertical, 4.0)
                    Text("Whether it's outdoors, on a treadmill, or even in place, running is a classic and highly effective cardio workout.")
                        .font(.body)
                        .foregroundColor(Color("brown1"))
                        .padding(.vertical, 4.0)
                    
                    Text("Cycling:")
                        .font(.body)
                        .fontWeight(.black)
                        .foregroundColor(Color("brown1"))
                        .padding(.vertical, 4.0)
                    Text("You can cycle outdoors on a bike, or use a stationary bike at home or the gym. It's great for leg strength and cardiovascular health.")
                        .font(.body)
                        .foregroundColor(Color("brown1"))
                        .padding(.vertical, 4.0)
        
                    Text("Swimming:")
                        .font(.body)
                        .fontWeight(.black)
                        .foregroundColor(Color("brown1"))
                        .padding(.vertical, 4.0)
                    Text(" A fantastic full-body workout that's low-impact on your joints. Different strokes offer varying levels of intensity.")
                        .font(.body)
                        .foregroundColor(Color("brown1"))
                        .padding(.vertical, 4.0)
                    
                    Text("Brisk Walking:")
                        .font(.body)
                        .fontWeight(.black)
                        .foregroundColor(Color("brown1"))
                        .padding(.vertical, 4.0)
                    Text("Don't underestimate the power of a fast-paced walk. If you're new to exercise or looking for something gentle, this is an excellent choice.")
                        .font(.body)
                        .foregroundColor(Color("brown1"))
                        .padding(.vertical, 4.0)
                    
                    Text("Jumping Rope:")
                        .font(.body)
                        .fontWeight(.black)
                        .foregroundColor(Color("brown1"))
                        .multilineTextAlignment(.center)
                        .padding(.vertical, 4.0)
                    Text("A surprisingly challenging and effective cardio exercise that also improves coordination.")
                        .font(.body)
                        .foregroundColor(Color("brown1"))
                        .padding(.vertical, 4.0)
                    
                    Text("High-Intensity Interval Training (HIIT):")
                        .font(.body)
                        .fontWeight(.black)
                        .foregroundColor(Color("brown1"))
                        .multilineTextAlignment(.center)
                        .padding(.vertical, 4.0)
                    Text("This involves short bursts of intense exercise followed by brief recovery periods. Examples include burpees, jump squats, high knees, and mountain climbers, performed in circuits.")
                        .font(.body)
                        .foregroundColor(Color("brown1"))
                        .padding(.vertical, 4.0)
                    
                    Text("Stair Climbing:")
                        .font(.body)
                        .fontWeight(.black)
                        .foregroundColor(Color("brown1"))
                        .multilineTextAlignment(.center)
                        .padding(.vertical, 4.0)
                    Text("Whether on actual stairs or a stair climber machine, this is excellent for leg strength and cardiovascular endurance.")
                        .font(.body)
                        .foregroundColor(Color("brown1"))
                        .padding(.vertical, 4.0)
                    
                    
                }//vstack
            }//scroll view
            .padding()
        }//zstack
    }//body
}//struct

#Preview {
    CardioView()
}
