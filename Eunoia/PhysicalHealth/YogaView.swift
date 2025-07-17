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
                
            }//vstack
            .padding()
        }//zstack
    }
}

#Preview {
    YogaView()
}
