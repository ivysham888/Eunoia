//
// JournalSwiftFile.swift
// Eunoia
//
// Created by Ivy Sham on 16/7/2025.
//
import Foundation
import SwiftData
@Model
class EntryClass {
  var entryContent: String
  var entryDate: Date
  init(entryContent: String, entryDate: Date) {
    self.entryContent = entryContent
    self.entryDate = entryDate
  }
}
