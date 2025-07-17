//
//  JournalPage.swift
//  Eunoia
//
//  Created by Ivy Sham on 15/7/2025.
//

import SwiftUI
import SwiftData

struct JournalPage: View {
    @State private var showAddPage = false
    @Query(sort: \EntryClass.entryDate, order: .reverse) var entries: [EntryClass]
    @Environment(\.modelContext) var modelContext

    var body: some View {
        NavigationStack {
            ZStack {
                // background
                Rectangle()
                    .fill(Color.tanbackground)
                    .ignoresSafeArea()
                
                VStack {
                    // HEADING + PLUS BUTTON
                    HStack {
                        Text("Journal")
                            .fontWeight(.bold)
                            .foregroundStyle(Color.brown1)
                            .font(.system(size: 40))
                        
                        Spacer()
                        
                        Button {
                            withAnimation {
                                showAddPage = true
                            }
                        } label: {
                            Text("+")
                                .fontWeight(.bold)
                                .font(.system(size: 40))
                                .foregroundStyle(Color.brown2)
                                .padding(.trailing, 5)
                        }
                    }
                    .padding()
                    
                    Spacer()
                    
                    List {
                        ForEach(entries) { entry in
                            JournalEntryRow(entry: entry)
                                .listRowBackground(Color.clear)
                        }
                    }
                    .scrollContentBackground(.hidden) // iOS 16+ to hide default background
                }
            }
        }
        if showAddPage {
            JournalAddView(showAddPage: $showAddPage, entry: EntryClass(entryContent: "", entryDate: Date.now))
        }
    }
}

struct JournalEntryRow: View {
    let entry: EntryClass

    var body: some View {
        ReferenceView(
            thumbnail: ThumbnailView {
                EntryThumbnail(entry: entry)
            },
            expanded: ExpandedView {
                EntryExpanded(entry: entry)
            }
        )
    }
}

struct EntryThumbnail: View {
    let entry: EntryClass
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 5) {
                Text(entry.entryDate, format: .dateTime)
                    .fontWeight(.bold)
                    .font(.system(size: 27))
                    .foregroundStyle(Color.brown3)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}

struct EntryExpanded: View {
    let entry: EntryClass
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(entry.entryDate, format: .dateTime)
                    .fontWeight(.bold)
                    .font(.system(size: 27))
                    .foregroundStyle(Color.brown3)
                Text(entry.entryContent)
                    .foregroundStyle(Color.brown3)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}

#Preview {
    JournalPage()
        .modelContainer(for: EntryClass.self, inMemory: true)
}
