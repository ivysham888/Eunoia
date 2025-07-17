//
//  MentalPage.swift
//  Eunoia
//
//  Created by Ivy Sham on 15/7/2025.
//

import SwiftUI
import SwiftData

struct MentalPage: View {
    @Environment(\.modelContext) private var context
    @Query private var moods: [Mood]

    @Environment(\.scenePhase) private var scenePhase

    let emojis = ["😊", "😐", "😢", "😡", "😫"]
    @State private var selectedEmoji: String? = nil

    var body: some View {
        NavigationView {
            ZStack {
                Color("tanbackground")
                    .ignoresSafeArea()

                ScrollView {
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Mental\nHealth")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.brown)
                        //emoji picker
                        HStack {
                            Text("How are you feeling today?")
                                .font(.headline)
                                .foregroundColor(.brown)
                            Spacer()
                            NavigationLink(destination: MoodCalendarView()        .modelContainer(for: Mood.self)) {
                                Image(systemName: "calendar")
                                    .foregroundColor(.brown)
                            }
                        }

                        LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 5)) {
                            ForEach(emojis, id: \.self) { emoji in
                                Button {
                                    saveMood(for: Date(), emoji: emoji)
                                } label: {
                                    Text(emoji)
                                        .font(.largeTitle)
                                        .padding()
                                        .background(selectedEmoji == emoji ? Color("bluegreen1").opacity(0.3) : Color.clear)
                                        .clipShape(Circle())
                                }
                            }
                        }

                        if let emoji = selectedEmoji {
                            Text("You chose: \(emoji)")
                                .foregroundColor(.brown)
                                .font(.title2)
                                .bold()
                        } else {
                            Text("No mood selected yet.")
                                .foregroundColor(.gray)
                        }
//qoute
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color("bluegreen1"))
                            .frame(height: 100)
                            .overlay(
                                Text(getDailyQuote())
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                                    .bold()
                                    .padding()
                            )
//breathing exercise
                        NavigationLink(destination: BreathingExercisesView()) {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color("bluegreen1"))
                                .frame(height: 80)
                                .overlay(
                                    Text("Breathing Exercises")
                                        .foregroundColor(.white)
                                        .bold()
                                )
                        }
//quick tips
                        NavigationLink(destination: QuickTipsView()) {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color("bluegreen1"))
                                .frame(height: 80)
                                .overlay(
                                    Text("Quick Tips")
                                        .foregroundColor(.white)
                                        .bold()
                                )
                        }
                    }
                    .padding()
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .onAppear(perform: loadTodayMood)
            .onChange(of: scenePhase) { oldPhase, newPhase in
                if newPhase == .active {
                    loadTodayMood()
                }
            }
        }
    }

    private func loadTodayMood() {
        if let todayMood = moods.first(where: {
            Calendar.current.isDate($0.date, inSameDayAs: Date())
        }) {
            selectedEmoji = todayMood.emoji
        } else {
            selectedEmoji = nil
        }
    }

    private func saveMood(for date: Date, emoji: String) {
        if let existing = moods.first(where: {
            Calendar.current.isDate($0.date, inSameDayAs: date)
        }) {
            existing.emoji = emoji
        } else {
            let newMood = Mood(date: date, emoji: emoji)
            context.insert(newMood)
        }

        do {
            try context.save()
            selectedEmoji = emoji
        } catch {
            print("❌ Failed to save mood: \(error)")
        }
    }

    private func getDailyQuote() -> String {
        let quotes = [
            "The only way to do great work is to love what you do. – Steve Jobs",
            "You are stronger than you think.",
            "Breathe. You're doing great.",
            "One day at a time. You’ve got this.",
            "You can't control the wind, but you can always control the sails",
            "Fear kills more dreams than failure ever will"
        ]
        let day = Calendar.current.component(.day, from: Date())
        return quotes[day % quotes.count]
    }
}

#Preview {
    MentalPage()
}
