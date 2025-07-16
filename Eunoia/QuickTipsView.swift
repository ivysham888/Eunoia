//
//  QuickTipsView.swift
//  Eunoia
//
//  Created by Anushka Karthikeyan on 7/16/25.
//

import SwiftUI

struct QuickTipsView: View {
    var body: some View {
        ZStack {

            Color("tanbackground")
                .ignoresSafeArea()
            
            ScrollView{
                VStack(alignment: .leading, spacing: 25) {
                    Text("Quick Tips For Mental Health")
                        .font(.largeTitle)
                        .bold()
                        .padding(.bottom, 10)
                        .foregroundColor(.brown)
                    
                    TipView(emoji: "😟", title: "Feeling anxious?", advice: "Try 5-4-3-2-1 grounding.")
                    TipView(emoji: "😓", title: "Feeling stressed?", advice: "Go for a short walk or journal.")
                    TipView(emoji: "😴", title: "Can't sleep?", advice: "Avoid screens & try deep breathing.")
                    TipView(emoji: "😠", title: "Feeling angry?", advice: "Listen to some music")
                    TipView(emoji: "😞", title: "Feeling burnt out?", advice: "Take a break")
                    TipView(emoji: "😪", title: "Feeling Tired?", advice: "Take a nap")
                    TipView(emoji: "😶", title: "Feeling impatient?", advice: "Reflect on your progress")
                    TipView(emoji: "😶‍🌫️", title: "Overthinking?", advice: "Write down your thoughts")



                    
                }
                .padding()
            }

            

        }
    }
}

struct TipView: View {
    let emoji: String
    let title: String
    let advice: String


    var body: some View {
        HStack(alignment: .top, spacing: 15) {
            Text(emoji)
                .font(.largeTitle)
                .frame(width: 40)
            
            VStack(alignment: .leading, spacing: 6) {
                Text(title)
                    .font(.headline)
                    .bold()
                    .foregroundColor(.white)
                Text(advice)
                    .font(.body)
                    .foregroundColor(.white)
            }
        }
        .padding()
        .background(Color("bluegreen1")) // 8BD1E1
        .cornerRadius(12)
    }
}
#Preview {
    QuickTipsView()
}

