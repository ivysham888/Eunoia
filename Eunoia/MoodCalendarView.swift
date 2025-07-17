//
//  MoodCalendarView.swift
//  Eunoia
//
//  Created by Anushka Karthikeyan on 7/16/25.
//

import SwiftUI
import SwiftData

struct MoodCalendarView: View {
    @Environment(\.modelContext) private var context
    @Query private var moods: [Mood]
    
    @State private var selectedDate = Date()
    @State private var currentMonthOffset = 0
    
    let emojis = ["😊", "😐", "😢", "😡", "😫"]
    
    var body: some View {
        ZStack{
            Color("tanbackground")
                .ignoresSafeArea()
            
            VStack(spacing: 16){
                HStack{
                    Button(action: { currentMonthOffset -= 1}) {
                        Image(systemName: "chevron.left")
                    }
                    Spacer()
                    Text(monthYearString(for: displayedMonthDate()))
                        .font(.title2)
                        .bold()
                    Spacer()
                    Button(action: { currentMonthOffset += 1}) {
                        Image(systemName: "chevron.right")
                    }
                }
                .padding(.horizontal)
                
                let columns = Array(repeating:
                                        GridItem(.flexible()), count: 7)
                LazyVGrid(columns: columns, spacing: 10) {
                    ForEach(weekdays(), id: \.self){ day in
                        Text(day)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    
                    ForEach(daysInMonth(for: displayedMonthDate()), id: \.self) { date in
                        if Calendar.current.isDate(date, equalTo: .distantPast, toGranularity: .day) {
                            Color.clear.frame(height: 40)
                        } else {
                            Button(action: {
                                selectedDate = date
                            }) {
                                VStack(spacing: 4) {
                                    Text("\(Calendar.current.component(.day, from: date))")
                                        .font(.body)
                                        .foregroundColor(.primary)

                                    if let emoji = moodFor(date) {
                                        Text(emoji)
                                    }
                                }
                                .padding(6)
                                .frame(maxWidth: .infinity)
                                .background(
                                    Calendar.current.isDate(date, inSameDayAs: selectedDate)
                                    ?Color("bluegreen1").opacity(0.3)
                                    :Color.clear
                                )
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }
                    }
                }
                .padding(.horizontal)
                
                Divider()
                
                Text("Select mood for \(formattedDate(selectedDate))")
                    .font(.headline)
                
                HStack{
                    ForEach(emojis, id: \.self) { emoji in
                        Button{
                            saveMood(for: selectedDate, emoji: emoji)
                        } label: {
                            Text(emoji)
                                .font(.largeTitle)
                                .padding(5)
                        }
                    }
                }
                
                Spacer()
            }
            .padding(.top)
        }
        .navigationTitle("Mood Calendar")
        .navigationBarTitleDisplayMode(.inline)
    }
    // functions
    
    func displayedMonthDate() -> Date{
        Calendar.current.date(byAdding: .month, value: currentMonthOffset, to: Date()) ?? Date()
    }
    
    func monthYearString(for date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM yyyy"
        return formatter.string(from: date)
    }
    
    func weekdays() -> [String] {
        ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"]
    }
    
    func daysInMonth(for baseDate: Date) -> [Date] {
        var calendar = Calendar.current
        calendar.firstWeekday = 1

        let range = calendar.range(of: .day, in: .month, for: baseDate)!
        let startOfMonth = calendar.date(from: calendar.dateComponents([.year, .month], from: baseDate))!
        let firstWeekday = calendar.component(.weekday, from: startOfMonth)
        
        var days: [Date] = []
        
        for _ in 1..<firstWeekday{
            days.append(.distantPast)
        }
        
        for day in range {
            if let date = calendar.date(byAdding: .day, value: day - 1, to: startOfMonth){
                days.append(date)
            }
        }
        return days
        
    }
    func formattedDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter.string(from: date)
    }
    
    
    func moodFor(_ date: Date) -> String? {
        moods.first { Calendar.current.isDate($0.date, inSameDayAs: date) }?.emoji
    }
    
    func saveMood(for date: Date, emoji: String){
        if let existing = moods.first(where: {
            Calendar.current.isDate($0.date, inSameDayAs: date) }) {
            existing.emoji = emoji
        } else {
            let newMood = Mood(date: date, emoji: emoji)
            context.insert(newMood)
        }
        do{
            try context.save()
        } catch {
            print(" Error saving mood: \(error)")
        }
    }
}


#Preview {
    MoodCalendarView()
}

