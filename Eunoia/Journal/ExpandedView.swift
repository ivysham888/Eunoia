//
// ExpandedView.swift
// Eunoia
//
// Created by Ivy Sham on 16/7/2025.
//
import SwiftUI
struct ExpandedView: View {
  var id = UUID()
  @ViewBuilder var content: any View
  var body: some View {
    ZStack {
      AnyView(content)
    }
  }
}
//#Preview {
//  ExpandedView()
//}

