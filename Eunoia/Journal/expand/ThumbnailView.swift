//
//  ThumbnailView.swift
//  Eunoia
//
//  Created by Ivy Sham on 16/7/2025.
//

import SwiftUI

struct ThumbnailView: View, Identifiable {
    var id = UUID()
    @ViewBuilder var content: any View
    
    var body: some View {
        ZStack {
            AnyView(content)
        }
    }
}

//#Preview {
//    ThumbnailView()
//}
