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

    let emojis = ["😊", "😐", "😢", "😡", "😫"]

    @State private var selectedEmoji: String? = nil // ✅ Add local state

    var body: some View {
        NavigationView {
            ZStack {
                Color("tanbackground")
                    .ignoresSafeArea()

                ScrollView {
                    VStack(alignment: .leading, spacing: 20) {
                        // Title
                        Text("Mental\nHealth")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.brown)

                        // Mood prompt and calendar
                        HStack {
                            Text("How are you feeling today?")
                                .font(.headline)
                                .foregroundColor(.brown)
                            Spacer()
                            NavigationLink(destination: MoodCalendarView()) {
                                Image(systemName: "calendar")
                            }
                        }

                        // Emoji mood picker
                        LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 5)) {
                            ForEach(emojis, id: \.self) { emoji in
                                Button(action: {
                                    selectedEmoji = emoji
                                    addMood(for: Date(), emoji: emoji)
                                }) {
                                    Text(emoji)
                                        .font(.largeTitle)
                                        .padding()
                                        .background(selectedEmoji == emoji ? Color("bluegreen1").opacity(0.2) : Color.clear)
                                        .clipShape(Circle())
                                }
                            }
                        }

                        // Show today's mood
                        if let emoji = selectedEmoji ?? moods.first(where: {
                            Calendar.current.isDate($0.date, inSameDayAs: Date())
                        })?.emoji {
                            Text("You chose: \(emoji)")
                                .foregroundColor(.brown)
                                .font(.title2)
                                .bold()
                                .padding(.top)
                        } else {
                            Text("No mood selected yet.")
                                .foregroundColor(.gray)
                                .padding(.top)
                        }

                        // Daily quote
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color("bluegreen1"))
                            .frame(height: 100)
                            .overlay(
                                Text(getDailyQuote())
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                                    .padding()
                            )

                        // Breathing Exercises
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

                        // Quick Tips
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
            .navigationTitle("Mental Health")
            .navigationBarTitleDisplayMode(.inline)
            .onAppear {
                // Sync selected emoji with stored mood on load
                if let mood = moods.first(where: {
                    Calendar.current.isDate($0.date, inSameDayAs: Date())
                }) {
                    selectedEmoji = mood.emoji
                }
            }
        }
    }

    private func addMood(for date: Date, emoji: String) {
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
        } catch {
            print("❌ Error saving mood: \(error)")
        }
    }

    private func getDailyQuote() -> String {
        let quotes = [
            "The only way to do great work is to love what you do. – Steve Jobs",
            "You are stronger than you think.",
            "Breathe. You're doing great.",
            "One day at a time. You’ve got this."
        ]
        let day = Calendar.current.component(.day, from: Date())
        return quotes[day % quotes.count]
    }
}
