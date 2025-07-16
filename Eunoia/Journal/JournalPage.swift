//
//  JournalPage.swift
//  Eunoia
//
//  Created by Ivy Sham on 15/7/2025.
//

import SwiftUI
import SwiftData


struct JournalPage: View {
//    init() {
//        let appearance = UINavigationBarAppearance()
//        appearance.backgroundColor = UIColor.tanbackground
//        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.brown1]
//
//        UINavigationBar.appearance().standardAppearance = appearance
//    }
    
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
                                    
                                    ReferenceView(
                                        thumbnail: ThumbnailView {
                                            HStack {
                                                VStack(alignment: .leading, spacing: 5) {
                                                    Text(entry.entryDate, format: .dateTime)
                                                }
                                            }
                                            .padding()
                                        },
                                        
                                        expanded: ExpandedView {
                                            HStack {
                                                VStack {
                                                    Text(entry.entryDate, format: .dateTime)
                                                    Text(entry.entryContent)
                                                    }
                                                }
                                            .padding()
                                        }
                                    )
                                    
                                    
                                    
                                    
                                    
//                                    HStack {
//                                        Text(entry.entryContent)
//                                        Spacer()
//                                        Text(entry.entryDate, format: .dateTime)
//                                        
//                                    }
                                    
                                    
                                }
                                .listRowBackground(Color.clear)
                            }

                            .scrollContentBackground(.hidden) // iOS 16+ to hide default background

                        
                    
                        
                    }
                
            }
//            .navigationTitle("Journal")
            
            
        }
        
        if showAddPage {
            JournalAddView(showAddPage: $showAddPage, entry: EntryClass(entryContent: "", entryDate: Date.now))
        }

    }
}

#Preview {
    JournalPage()
        .modelContainer(for: EntryClass.self, inMemory: true)
}
