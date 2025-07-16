//
// JournalAddView.swift
// Eunoia
//
// Created by Ivy Sham on 16/7/2025.
//
import SwiftUI
import SwiftData
struct JournalAddView: View {
  @Binding var showAddPage: Bool
  @Bindable var entry: EntryClass
  @Environment(\.modelContext) var modelContext
  var body: some View {
      VStack {
        HStack {
          Text("New Entry")
            .font(.title)
            .fontWeight(.bold)
            .foregroundStyle(.brown1)
          Spacer()
          DatePicker(selection: $entry.entryDate, label: { })
            .accentColor(.bluegreen1)
        }
        .padding()
        TextField("How are you feeling?", text: $entry.entryContent, axis: .vertical)
          .multilineTextAlignment(.leading)
          .lineLimit(5...10)
          .padding()
          .background(Color(.systemGroupedBackground))
          .cornerRadius(15)
          .padding(.leading, 15)
          .padding(.trailing,15)
        Button {
          addEntry()
          showAddPage = false
        } label: {
          Text("Save")
            .padding()
            .fontWeight(.bold)
            .frame(width: 100)
            .foregroundStyle(Color.white)
            .background(Color.brown2.clipShape(.rect(cornerRadius: 15)))
        }
      }
  }
  func addEntry() {
    let entered = EntryClass(entryContent: entry.entryContent, entryDate: entry.entryDate)
    modelContext.insert(entered)
  }
}
#Preview {
  JournalAddView(showAddPage: .constant(false), entry: EntryClass(entryContent: "", entryDate: Date.now))
}
